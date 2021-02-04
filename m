Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKUA5WAAMGQE5W4AKHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D28C30E87D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 01:30:35 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id r5sf1317080ioo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 16:30:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612398634; cv=pass;
        d=google.com; s=arc-20160816;
        b=0XL9p5cB7COXWNZMjqSs2osC4kdwuGO0oEsXBCraqls81tdi9se0tFomhm+gvOyFkr
         TlMe4VdBTgv478DP0cQfXLS8boIVsKyJ+tWgVOcCgBlnLjF59N7XBursBdBVkLB/edWO
         FBAa1U9ybd0hNx/yZlshJrwXNcub1MEA0QKejEFH56bfoQkQgkf98+4Wz/rX95aIP1Oj
         YLGovseYe4TZQoZ+u6Gt/+91rAEcxzjUE/q8CsevkIV61/BU72yrKh4uH0wqmLX53UvP
         jGoU46zpo41s+mHzAMV6XUZqFv5szvuoVFDog9DjsfjDo87ut5OXlyth2ve+FZuXiT+o
         l9FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=WLbmg6o8c6ec1O85I4jBz2WB2JP3CrGQMpPWnjSVLhs=;
        b=n1Lk+G7KhOY5NBwq2BatNPbagnMq+wLOFkr/LkzMHv/8aqDMczzYTfMJ9CEA6bcGMs
         gK/7GhbIzO2vSTAkL0vENimGmOpt9R+WPtrZobHHXNsQRJzoWboF73oCcRtUxo1UtgTJ
         nPhtMUwOSoFIOu7hPQK/pkzfWvOQ26lrRD6frEVqlJyfMhKos9VuasJm9OfnCnlnHLkE
         tloZf41Yh3zffPxx8zCrtMc0nS91sgmyq/+WDkLnUPFJzogizCvfAQiE9pZAY5nK6YhY
         gGQusSlAli3u56B/NqzpVOgFC+M2WP7rWmCwbfOHCknZcZBacN78x25OYEfPWR+hxDQI
         Pu1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=s9YgvvsA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WLbmg6o8c6ec1O85I4jBz2WB2JP3CrGQMpPWnjSVLhs=;
        b=XpEh3l0Ji1gd6TSzFawUDc/RnXXowdPVJZ0NUbCYx0Um/CkI8an/02twJjyjLsiR6/
         g0mD/i8oKUh0zdVh0qSZo80StLgRI3+84477VTD8VfGEip9sGc5syRIHXXagNCyriz19
         yG0VXt3XkubudhY4ID0u/9d17T2+/r2Z688NImnytfgsnMzyMAS1fsOSjO0QUKA2dyqn
         EOmzWkxfpHQNlbP6WElBa9qgIZyBRW4wpfV6y/4Onv6SNcsPO0sXIaNjrNl571FnlA65
         JHs4ANGuLRuTTp31NABaMTUw3EtNcNnuudOjQWbDy4YEEKYqFemYuFeI760OVwSVvPhS
         hg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLbmg6o8c6ec1O85I4jBz2WB2JP3CrGQMpPWnjSVLhs=;
        b=Q8fM4N+bn7R9wz+ENEn2M0axTLdlOM8i668lE+aYLTmVTViItSCzcD0I/aaz5QbAuN
         ZJRe0uH0b5M4oii/+97z3x7gX3LVKSqQJydSjX0X1kS1K/1PXbImisDKsUP/5x8VXJ9H
         nk3i+muV4sYB8nMk9g2p9LxHDJuRQJ8dWq1HYlF2/VWG78bqz7U2kjkIEgQsjqwl0p83
         k9uPkzrFw3RxQbA9MZXqt09hxynkHgTsKYNwIsJwWBQwPhI5e/NJb6nT8NwqnXtLP/yX
         /3npmFlJyBC8gHn2SKuIcKtZX5pq68UsL/FPBPoj6eB718bXHOjLb4D3xCJFlZZ3+wHQ
         jC6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302rxRc1kjkquyI+ezvQLF5R6BjnlMm77x6kE9aUp8iut8fpGq4
	/9wCgzYAOFQMLmsAgHL6asM=
X-Google-Smtp-Source: ABdhPJzqNxVHGnbj2GeRLYwWiuLoazKx+Oa8VbttZ4a34vcxYsfylKaTFBqG9GI2S2ut4sehjDj7Hg==
X-Received: by 2002:a6b:ee07:: with SMTP id i7mr4509503ioh.87.1612398634280;
        Wed, 03 Feb 2021 16:30:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8216:: with SMTP id l22ls608793iom.9.gmail; Wed, 03 Feb
 2021 16:30:33 -0800 (PST)
X-Received: by 2002:a5d:9413:: with SMTP id v19mr4391723ion.46.1612398633815;
        Wed, 03 Feb 2021 16:30:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612398633; cv=none;
        d=google.com; s=arc-20160816;
        b=uRd/5xrQEHqsa8m18/q4yR/Z8dQQVouapDivO8aIhNm4ZgQlgn22+GzFyKJBHM3rRl
         jU6y9+owOZrlnFvN/HWvlsv2Cu3nfN4P28zgXWWp7tVMOoJpSdC1skaHIA/eOpTH+apR
         J3yBw2k7EQOT+L0ot/TxwFFr7YAt86Ov6Q7y8EKut/gETkOx0uwbsEZiUX7jkmeFI0Q8
         e99buZ7j2/29WBFlPxgitO95wOJACSU2R+RJdimYMJ9DbJaI9NpJazUjXvoFcIY3sxH9
         uuuYssqT/gd4wFdZfPcxXuWVxsxsNpCD7DLHMaXYENx/ZebZLYyL/U9iCOW1VwSy+o1d
         FceQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=zhHO6YOqvfd2e0VJ7LUzPQqH8P+nIIHnnTyC4WEwfZE=;
        b=AwuBc3EURjFGGL9h2vMDotPjDwb2Y91x+amZBjSCKAkBOFxAkfmYSlwhj0+G2UcgJT
         tHIvvxgQKIy3zto7P4+4ELjjc2hRjoxUM6SNOvI+q2h3wgxwcwx0CYv4UpYi1QSOpIpW
         LAFK6VCTyb/Pn1l3HITXljcbF7OEXEgF+rvst4ECF4tesdbvheLuHhDP0NCrKhesbx+E
         aG6Z1HuqS9bdGqfA9aaNtNHTsEC6I8Okc6iZmhUhReSgkpTIUcYbiO77RCFhB0W/ZV4k
         20wWc7B8gm910iVwaj+XulYr/mxDQwuxeJ5nUKJO5l7FajEfKrsCSV56ZySGAOkGVtMH
         rk0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=s9YgvvsA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id o7si166005ilu.0.2021.02.03.16.30.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 16:30:33 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 1140U0n6022459
	for <clang-built-linux@googlegroups.com>; Thu, 4 Feb 2021 09:30:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 1140U0n6022459
X-Nifty-SrcIP: [209.85.210.169]
Received: by mail-pf1-f169.google.com with SMTP id m6so973307pfk.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 16:30:00 -0800 (PST)
X-Received: by 2002:a62:2f07:0:b029:1bb:5f75:f985 with SMTP id
 v7-20020a622f070000b02901bb5f75f985mr5322944pfv.76.1612398599530; Wed, 03 Feb
 2021 16:29:59 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
 <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com> <CAKwvOd=YVDS8tjnN6kFqe2FAhfSzVg870VsSvkNuvVZ7X6BrVg@mail.gmail.com>
In-Reply-To: <CAKwvOd=YVDS8tjnN6kFqe2FAhfSzVg870VsSvkNuvVZ7X6BrVg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Feb 2021 09:29:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNARWpPBpT7MXeUBYO3SNcB1UtTNrTcVeFW1QXRMfBrOZHQ@mail.gmail.com>
Message-ID: <CAK7LNARWpPBpT7MXeUBYO3SNcB1UtTNrTcVeFW1QXRMfBrOZHQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=s9YgvvsA;       spf=softfail
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

On Thu, Feb 4, 2021 at 8:16 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Feb 3, 2021 at 2:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > > > the default. Does so in a way that's forward compatible with existing
> > > > configs, and makes adding future versions more straightforward.
> > > >
> > > > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> > > >
> > > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > Suggested-by: Fangrui Song <maskray@google.com>
> > > > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > One comment below:
> > >
> > > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > >
> > > > ---
> > > >  Makefile          |  5 ++---
> > > >  lib/Kconfig.debug | 16 +++++++++++-----
> > > >  2 files changed, 13 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/Makefile b/Makefile
> > > > index 95ab9856f357..d2b4980807e0 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> > > >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
> > >
> > > It is probably worth a comment somewhere that assembly files will still
> > > have DWARF v2.
> >
> > I agree.
> > Please noting the reason will be helpful.
>
> Via a comment in the source, or in the commit message?
>
> >
> > Could you summarize Jakub's comment in short?
> > https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.1875129-1-ndesaulniers@google.com/#23727667
>
> Via a comment in the source, or in the commit message?


Both in the source if you can summarize it in three lines or so.


If you need to add more detailed explanation,
please provide it in the commit log.




> >
> > With this patch set applied, it is very explicit.
> >
> > Only the format type, but also the version.
> >
> > The compiler will be given either
> > -gdwarf-4 or -gdwarf-5,
> > making the -g option redundant, I think.
>
> Can I provide that as a separate patch?  I don't want any breakage
> from that to delay DWARF v5 support further.  If so, should it be the
> first patch or last?


OK.

At the last to be safe?

I am fine with doing a clean-up work later.






> --
> Thanks,
> ~Nick Desaulniers



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARWpPBpT7MXeUBYO3SNcB1UtTNrTcVeFW1QXRMfBrOZHQ%40mail.gmail.com.
