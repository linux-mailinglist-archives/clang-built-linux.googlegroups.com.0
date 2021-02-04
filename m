Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLNC52AAMGQE3T64XOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3095C30EC58
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:16:14 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id u1sf1211100ooi.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:16:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612419373; cv=pass;
        d=google.com; s=arc-20160816;
        b=FnvAvNtL8ctvKTYdiQZT+gR3HFV+mOoeHWC2CTWSwY4e4oF6i6H/fXv7CaBQ8zGE4Z
         oh3zSipaf1E8A5adXQ3IAzlFhPYWlMRuxPtYNERr1WxwOroBCmY47HTmPVtd4e74+Z1w
         yUadG8bQDg1G53be5b0S2RHTpKJBV14YOiP7akw97TWAnjuFTDjTHQKSMiBT3LkUvcva
         XmfGVGlTlpm51L/rZffwwjxbqvkdbOLne80+qe8yJehd6nxpDm2ihq+vmuL4pkbte7Eo
         sc7S+lVFdIXNbHHVo5bCHYcfLNG4cCIoRuc1c+pHdbJZTCeQ9Mbca98JXcjswhHch6Ub
         wGBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ggLUSoG661Sbt1PhRCYV6PuPFYcD4oeEhoSBspxFJW8=;
        b=KwIcRrsKv1e2oT3Vke1ky9VKCBo4aaJUxJBZXLcQNRNncSrBmOCnQVtdQrQh6kxpcj
         DrcZA7GTKdHl8LQRXox9nrgQ4cLbmQatg1vFViP2kpxMdDFGDJ9AMOc4LQcKXVIWc0Kh
         Zvyi//vI1oQrFYakb1OlS8Sg1CpUn9StlcN6egnyn+z4yTLHbSAPzRSMpbWOi9TZxoa9
         j8BULVO5CFpUCZbfcMW2fHyl//e5+Wti6oY+JP5yekPR5lDDOAGG0b7BuOv+9iU/RcJo
         unwRhupTVIr36T5ryOOFd0x5j9wnP9USj/UNBFtVoJ3dBim/ZDMK7tCr+lOU73g6PqQ2
         Z1aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rQhP2RFp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ggLUSoG661Sbt1PhRCYV6PuPFYcD4oeEhoSBspxFJW8=;
        b=Kl+UGJJce1h3jn90Fbb9VY8KAfPVp7F23WRJsxQDSjLurGzZ64vBhsStZioSnkdojl
         S6FzUwqNiyah2P8pXE7INDU+0QBHZnq/qpf25T+6CrEYq8bbtdXyjEJkxbORe4W024Yv
         oJue98lQB4xC6O6h5jlCElvoL6Ymw4QD4MYMCGbgGg2pA0ssMmCZrecSBgIQKbsr8VuU
         EBq1P6T0R3OdLsDgSXX4dKxNZqz6/tV94Ql+8qXpd65EpQtislFSw5/0QQxaYFU33Xft
         n5v3U87gupzaVarsE8GYsLkGCnvC35sb0mtd1bWhFCmASbdg3/ZnP7/+ht1DxnttvALI
         VcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ggLUSoG661Sbt1PhRCYV6PuPFYcD4oeEhoSBspxFJW8=;
        b=MOaeGzuiVoNtHQUmoY/VcoUwnas572iczcUSwxl2KhcY+gNicRZeNhDn1DkosIc7uw
         Lul0cUyyrlk/7xp+TobxOEvcUhbw5Ov5JL3mYEOPnrFKlcrNBR1jj7gKmESHUkp3jaAn
         FeHtQqCkJt6QwVRu4k/DE74Zql/OiEhKYBR10e42oDKJClkXGW4tEV4G2SprTXTnd7rd
         zOJcit2Yjc1w6HSLfwLnlLc2uR0S5ZlfnIed+d7el122dhAnEaYlj4VxapgRyAy2TjzS
         rYSZGrz0ms7CI7DSNUNnnpkyy0ffEvSbo79heKaalDU3Y/KHjuX1Zl5tmVSifO3QJ57p
         LInQ==
X-Gm-Message-State: AOAM5326hb3nTRztLl64Emv0RrewgX6D8EcU0XjK+cKrHOhhtXuzzhJA
	jfe1hctMCCqCIhdYfpFHZKM=
X-Google-Smtp-Source: ABdhPJy/Gr8hzEHjJSguVvm/H/A805UYr/lU6LDfFWBvSPLpXUz/fyil4qQVluiVUKAIl7TpSonHTA==
X-Received: by 2002:aca:4c03:: with SMTP id z3mr4270180oia.21.1612419373150;
        Wed, 03 Feb 2021 22:16:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:923:: with SMTP id v35ls1091577ott.0.gmail; Wed, 03
 Feb 2021 22:16:12 -0800 (PST)
X-Received: by 2002:a9d:7486:: with SMTP id t6mr4630146otk.58.1612419372744;
        Wed, 03 Feb 2021 22:16:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612419372; cv=none;
        d=google.com; s=arc-20160816;
        b=q+mZOFHlgW0j1e9bnNCJVu0HK5i312pTJyi4z7yYgtmDxaaq5vIwE1AfkNZ3gLrYL9
         uCanc0PhCi89cD00EJpYmi/npcKOVGgrRCIM9GGNBY4oKGDkX0KllOxtOC8n9/mYNSk1
         Q1cGDKJfk80OOznyVCAD6COVP6h4YVs+sqleKdptzl3cSUSNgGg9WHoRGD94V07dqMa8
         m58QrwcyIv/jMpjgf7BXlCAuCKfvC/6euRk7A/Mfh45VyOpejK2Y8mFq0UeLH7pq1Gxf
         l5UlOws8h8ZOtFDvXhCZnsGYzT4uM50xdX9z+m9Zcm2Xv/yX5vNo/1PTe/JenAvdPqMY
         3k5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=di4/vrEwMGMptUjaosgJOlqFm8Mgh4qA8yfsVQbfl2E=;
        b=CQEUW4o3ndmroZQytjkOourdehaClKCmMxWsZR758E0hxL31N42RsWv6Jewnqas44S
         qH1UPb9S+PuVpGlh9Lie78HpzavdwMc56P688TxZDWlieF6uwex3G8lwCbeJjyla2a8w
         d/iRwf+S9EJQybeBlcV0YRUJAsi2bv960mkmPLxzOvWQaPQffAH817DMlYAQLnF5u835
         E/EPidbhEFcvEKwzGFjp7nhCAfxVD4h8KE7IW6wmg9CzHeYfEHaV+PCs+hDE22gS02ne
         YsuuOtnY6BGjjBry2faMfUhOcNqfnNYYO1P8iAbPlzTPmcq9IOH5V0pZUtCyqEp/nrQv
         7rIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rQhP2RFp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id f197si464614oob.2.2021.02.03.22.16.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:16:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id y10so1199869plk.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:16:12 -0800 (PST)
X-Received: by 2002:a17:90a:db05:: with SMTP id g5mr7120354pjv.32.1612419371984;
 Wed, 03 Feb 2021 22:16:11 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
 <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
 <CAKwvOd=YVDS8tjnN6kFqe2FAhfSzVg870VsSvkNuvVZ7X6BrVg@mail.gmail.com> <CAK7LNARWpPBpT7MXeUBYO3SNcB1UtTNrTcVeFW1QXRMfBrOZHQ@mail.gmail.com>
In-Reply-To: <CAK7LNARWpPBpT7MXeUBYO3SNcB1UtTNrTcVeFW1QXRMfBrOZHQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 22:15:59 -0800
Message-ID: <CAKwvOdmb8i=-AxnW5SB8h1KWbP7Ku24z7btaqy+DmRxRyYCsrA@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rQhP2RFp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e
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

On Wed, Feb 3, 2021 at 4:30 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Feb 4, 2021 at 8:16 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Feb 3, 2021 at 2:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > > > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > > > > the default. Does so in a way that's forward compatible with existing
> > > > > configs, and makes adding future versions more straightforward.
> > > > >
> > > > > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> > > > >
> > > > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > > Suggested-by: Fangrui Song <maskray@google.com>
> > > > > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > > > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > >
> > > > One comment below:
> > > >
> > > > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > > >
> > > > > ---
> > > > >  Makefile          |  5 ++---
> > > > >  lib/Kconfig.debug | 16 +++++++++++-----
> > > > >  2 files changed, 13 insertions(+), 8 deletions(-)
> > > > >
> > > > > diff --git a/Makefile b/Makefile
> > > > > index 95ab9856f357..d2b4980807e0 100644
> > > > > --- a/Makefile
> > > > > +++ b/Makefile
> > > > > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> > > > >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
> > > >
> > > > It is probably worth a comment somewhere that assembly files will still
> > > > have DWARF v2.
> > >
> > > I agree.
> > > Please noting the reason will be helpful.
> >
> > Via a comment in the source, or in the commit message?
> >
> > >
> > > Could you summarize Jakub's comment in short?
> > > https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.1875129-1-ndesaulniers@google.com/#23727667
> >
> > Via a comment in the source, or in the commit message?
>
>
> Both in the source if you can summarize it in three lines or so.
>
>
> If you need to add more detailed explanation,
> please provide it in the commit log.

This information is mostly in the commit log of patch 2.  I will
reword it with additional info from the link you sent, but I find that
such minutiae is resulting in diminishing returns on subsequent
respins of the patch series.  I implore you to reword v8 (which I will
send) as you see fit when applying the series.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmb8i%3D-AxnW5SB8h1KWbP7Ku24z7btaqy%2BDmRxRyYCsrA%40mail.gmail.com.
