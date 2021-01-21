Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB37SU2AAMGQEFEEBVEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 609DB2FF1D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 18:27:13 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id n2sf1673050pgj.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 09:27:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611250032; cv=pass;
        d=google.com; s=arc-20160816;
        b=UjRo6wv4YWdEqsuW1nV41nWjrWpqNp4FlWXugkhxEqc1LQ5KYayEYUWsYBediPJUlo
         bDM//Xk7AbNNAFGj/ZOFTf5ji3pxa6MIeNoOkqvMvO47HdQC7tVu6bDmCdW/FGkbfOTs
         FimWRqZP2UOYxisrdDQ0KvJhkUECrb1gf2ZMu6a8NPM0GjRbkrnokU1q0+kWM0LX7f/C
         uJ42Gu8/CR0hma0br7dJ8/iBZy2aPSc0Tsri4I8Jd2E9dP0oA5hrisW+wWTuTiw+tgCe
         u5z7mSwtEWGCfspEK39QqbtDahhdQzHJKj8UgykGf/OylnwWlJHFuKTHsk90fKUTIQSu
         SUkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=6oZqXmydfqz45plANjuvnOmSuD9f/DacYgABxWjxNhk=;
        b=OB8p9g2QDxPl6a9Mvh6FK7yNlJvsX7Sh6AEgUGE+XUzDsMmWKv9X5zwVbZGat9fQgD
         I78QcSqh2PlmKIEy/wt4hQdRTipBgqsEMnf5cyf+U2QaytUyZkoFPtpYaZ9dJtltrK/N
         RIn+XkwXVUnus5hzSFPnUgigHfwdA9crKH/YCxXd0qXSk/PgJnGUvhB59EFWvQhxp4Bd
         rau8RBrJ6j+fn4EmV2wF+9csSCAVYUBPeyEvoE7SdAC4t4K+d/Zk1sLGYrihWB6PKp+n
         VLvxZT9Zi4QxKh6aJXPfwwD6GcMD0lsjOgc2GZrhx5/IsXzfsn32Phm+evl47F181sHK
         pPeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Cof4QTbi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6oZqXmydfqz45plANjuvnOmSuD9f/DacYgABxWjxNhk=;
        b=GZmLXAesrdvSq15PGeP3mCL/xbJ2LJttPn+xv/zAw9VeSuT+BoEwWi7hEsmLuS1GCF
         Tq8Qx2f2iK4nQxQ4cjwYsVzvKmdSAWEx23hMTwOD2XrFYXIITzy8aEJUBqreRsOLp5bg
         OjzmHMZaFiaGkXnKJ9R45TqYryYUslKpW4z3L67dwTBbdnLfQUdqVi47LfjWK4MtmLTZ
         qwgtiFuwhySdm4b6jd/qyuNEbpVqRRBenaufF/KJRiDYKQLGLvKusObEv9PSQwPqu7Ox
         829817X1mJP4AAPOXDEHli7yzZR7nkJPobjU3ukqIJeVNFj/fgBNHaYmGfGZzbq23NpW
         /lIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6oZqXmydfqz45plANjuvnOmSuD9f/DacYgABxWjxNhk=;
        b=BxI1pvQBMvtt4A9zdII+iD3GFLfLVqbpkFdN7VJuTNA/NO8CrVfdeawboaAaUc0iOz
         06ZyoUoTBVnAuiCPg2JBckjunAhA3qStQ8c2MlKxCW4385xo5jg5kg41cgWSFzEshGVQ
         MUlpnEnOJoHRJhqXUgv89NIpj8aYq+D4SN+xBCfFM/e//ABdvoPY4Jt6p5qRyBRYU5EG
         4TF0beSPJhsrmtJD+IG+bE8WL6QTWcb+In4j8hkXI4M8ehWf2MXQC/HFqXKyX9Gx3B5Y
         DYwJz4xN2mAStNKoC8oKrO0apGBYFbZhQl/rFy3MmlCuwvySfoaVNFNQTXoev5RJvLc8
         Q4Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mBSGoCxUiBihxPJ0BlscXfh4YtwMFPs98TBU2OaxzbMlgFrLr
	NwGLZsSrgE1tSNI+2wAwSHo=
X-Google-Smtp-Source: ABdhPJz30lCJiqFpDMTSdn7kp15fEusFy82QSarOrAHbo3dHDntIxjOroV2GNsHe13qb0XM5I6QaEw==
X-Received: by 2002:a17:90a:170f:: with SMTP id z15mr453994pjd.63.1611250032155;
        Thu, 21 Jan 2021 09:27:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8489:: with SMTP id c9ls1434542plo.4.gmail; Thu, 21
 Jan 2021 09:27:11 -0800 (PST)
X-Received: by 2002:a17:902:223:b029:da:af1e:b112 with SMTP id 32-20020a1709020223b02900daaf1eb112mr383599plc.83.1611250031475;
        Thu, 21 Jan 2021 09:27:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611250031; cv=none;
        d=google.com; s=arc-20160816;
        b=eL9uhMAYfxFgrXZ0E9/uegRCI8yqelJBo9hNfXPqKIT/u9HekvuBw4gx35/YOW8RQD
         RBjNtZsi1TOi0CU8lGnO1PODv0A+y/r1GLQ4cz8IWV0w8v8WLUsjySScseIGoI/4Wu+f
         TN9Fx6OFuepKc5LDlfBBX4yb74a8qqD+2KoPMzOgldKyf6/2Gg6AGH+0gLzLIhOSaJo9
         HAlx/EAzTMNEOWXZyxoaeFJBmoFbBPm/dkRDheUBu+fEqPrZlPXa0F1+q35xpkL2VCSS
         18WxlFl7YSzUh/RSY4kvezKJW9KSFFQVxSwPTzOoVK/QKDG/xyY4Y8AR18vv7+X+RX4C
         gGWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=o/g6QDTxEay9heg2+A4lesF7Relum8HJDPSF7wKHZiU=;
        b=tE6y9nn5Z6UaBJxK7NBoIUThSI1a6F6FP6p8pdFbJlEC75GA0jx3X0162NbEK4ldDu
         eaGTDarbdk8zn7V4J2Sdt+NY7LZ1ri1MZDwgXweWnZNoeqP7tGv+ixoSsWGUzvfc+IT0
         KruXYm6Jii1qB7ve4xMbwFw+akmeyTF1QDWgEzL3hT3vBTevp87pY5HY7ABlPvHZIIv3
         aiabvJOLkcdaZ9V6LOCNvAwclr8aOW1nQeb4WO6GARgqBSJUnx2Vx9QXS6SH7ni1kQLF
         cCKa1RKSOd/cTumj9Jl5vRrMdjFyifgfeIqkbczgG5SPA0v9CYktmY0ofDTuB7/r9B/n
         +9Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Cof4QTbi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id d2si447134pfr.4.2021.01.21.09.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 09:27:11 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 10LHQttf009640
	for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 02:26:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 10LHQttf009640
X-Nifty-SrcIP: [209.85.167.49]
Received: by mail-lf1-f49.google.com with SMTP id h7so3626333lfc.6
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 09:26:56 -0800 (PST)
X-Received: by 2002:a19:5e5b:: with SMTP id z27mr111567lfi.143.1611250014405;
 Thu, 21 Jan 2021 09:26:54 -0800 (PST)
MIME-Version: 1.0
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com> <20210121161640.GA1101379@ubuntu-m3-large-x86>
In-Reply-To: <20210121161640.GA1101379@ubuntu-m3-large-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 22 Jan 2021 02:26:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQGR=f6G_QXSgjLCKukELHyT9fg3O3c_UC=PR5Oqv4XDA@mail.gmail.com>
Message-ID: <CAK7LNAQGR=f6G_QXSgjLCKukELHyT9fg3O3c_UC=PR5Oqv4XDA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Joe Perches <joe@perches.com>,
        Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
        Pia Eichinger <pia.eichinger@st.oth-regensburg.de>,
        kernel-janitors@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Cof4QTbi;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Jan 22, 2021 at 1:16 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 05:01:15PM +0100, Lukas Bulwahn wrote:
> > Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> > Kconfig") removed ./scripts/clang-version.sh and moved its content to
> > ./scripts/cc-version.sh.
> >
> > Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
> >
> >   warning: no file matches    F:    scripts/clang-version.sh
> >
> > The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> > changes in ./scripts/clang-version.sh; as the file is removed, track
> > changes in ./scripts/cc-version.sh instead now.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > applies cleanly on next-20210121
> >
> > Masahiro-san, please pick this quick fix-up patch.
>
> Masahiro cannot pick this up because the patch to add clang-version.sh
> to MAINTAINERS is in mmotm.
>
> I think the better solution is for Andrew to drop the current version of
>
> maintainers-add-a-couple-more-files-to-the-clang-llvm-section.patch
>
> and pick up the second one I sent, which allows us to deal with this:
>
> https://lore.kernel.org/lkml/20210114171629.592007-1-natechancellor@gmail.com/


I agree.


> I am not sure it is right for us to maintain cc-version.sh but I am open
> to it if Masahiro agrees.

I am not sure either.


The part in cc-version.sh maintained by Clang folks
will be this single line:

clang_min_version=10.0.1


You can add cc-version.sh to the coverage if you want.

Or, the following line in MAINTAINERS might be
enough to catch the clang version change.


K:      \b(?i:clang|llvm)\b



I will leave up to you guys.



>
> >  MAINTAINERS | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index e5d7cf38ec82..aafbea806a82 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4355,8 +4355,8 @@ B:      https://github.com/ClangBuiltLinux/linux/issues
> >  C:   irc://chat.freenode.net/clangbuiltlinux
> >  F:   Documentation/kbuild/llvm.rst
> >  F:   include/linux/compiler-clang.h
> > +F:   scripts/cc-version.sh
> >  F:   scripts/clang-tools/
> > -F:   scripts/clang-version.sh
> >  F:   scripts/lld-version.sh
> >  K:   \b(?i:clang|llvm)\b
> >
> > --
> > 2.17.1
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121161640.GA1101379%40ubuntu-m3-large-x86.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQGR%3Df6G_QXSgjLCKukELHyT9fg3O3c_UC%3DPR5Oqv4XDA%40mail.gmail.com.
