Return-Path: <clang-built-linux+bncBD52NTUX6UGBBWFC6GAAMGQELTLZYNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 056FE30FD6B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 20:56:09 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id bd22sf3938994edb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 11:56:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612468568; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJEITNsxqh8Sf2x9RwwJgSNY56C5NuiGUdYE9/qK/U86/+99l5iLUCcSSHSkrO0DBb
         +Wv9WuN8p6wG0sWWewQslfh85wcJh8zlOscndSMAASkXfYLPMAXeGNcWnjKa7NjA1MBO
         M9AaDC3kEDHsCLh+HGtFaGawuxUGfgwvZpnhgPVN4jmaqeIibOvIapGvhvTKzaihmmzn
         4djVN+NNOdy8OGS6dlNjpnoCqPkblvfnIsQNCZJiJ2/7CbZSrXU5Vp315Soeb8SumJro
         BZTYyQwkkMXSCD7HZ0FCnLBJkpXmjXHIr199+N8z5GY42OYLFnB+TsWWN+iTjVIZ+KFL
         bDvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=/tEqBVJ2s3yh3cAF1iwq+T7OFNhPAHTnBzveBazR5ww=;
        b=pfHaDWUbuUSTGU0oFmO8efi05I1rlRPgG7ueRev/9x7sMSyB85eXr3SLUWPSH9OZXN
         7keiW0OWwkvynSsHjkY0auP+Zw4bbmS8GWKTIcy2h9GHiEjZ6F1uTKvVqdeW+58aahQ8
         14v9oer1Cka6/RjZVIgzx/cTPiQGN05388mLNhixy8yF+i/yxW7JqZJvKJbFIwjMPUZE
         we9NDunv4CGlGONffF+3RLN245G0d0lzIgVbBy6UMQK2DN++g8d17/9aHNWw1M1G19P9
         KdxbVak34RTqpWMQIQU4qIKaX4lfukrkZGO9DeY5ezIOh3yjaO15+C0RWsoH3xWpQL8f
         d4wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/tEqBVJ2s3yh3cAF1iwq+T7OFNhPAHTnBzveBazR5ww=;
        b=cV0N5Uvw/L1mbrXahyuwluVwppkgr3Q+PRl4AqvXzg+Yhol7RE4d79ec0FM9MH/9tn
         qBuJ00i4nmMdjjxH11Th85ay2d8uDbI56bspZx4qpCMfje4fs1TEPFGx2OzFhChTgvd6
         IfJFlWjQoDexpisyHAXPvUaPzrBBJdO9KTsUxrYB274mEQS2NIIrboHLNeW0qQN7S9dh
         hR0aJEQf/NYB/FYnWDl4A7+MuKY4o9zuoNWxkeiWnoiQBc2Vp1SdH5BUq+43DvN/+I76
         bofMRyww+CG+wlr78UbBuGEhJj5kRmFQfYPZ1QScYW9nyr4z1WynkmGReMcGbg7Eteui
         soGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/tEqBVJ2s3yh3cAF1iwq+T7OFNhPAHTnBzveBazR5ww=;
        b=oCZDMnbDA06qDrBNXffsvIDYOcD5U0jaCXTESIqaSBJDX4zHqM6nChW5sbaB0tJQK0
         bL51pGszrlDbU3PeOSEw0TLg4805aEM+K3AfwjaM7kyYVwMhqFvVwpbitu5fgNpCh6Dn
         LnmGG6CUGcRmCstroPCynEqarRHTk0CgAHXOlQMDrNHzCsujR4mlTkZyZY8ewzrrd+zq
         5bcScGmvZqIuRJE2Wp8foXeZblX0mf22tHDf3EN8RbSCrreXVccP8ZP+XDvwZidJ+k7W
         3kTZN3gDAtiHMZfXuUu4moayR/TRIqjqExQXnUIwtjUCzGkYaKyFPHKUNBwgYGn7htGm
         UM9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Okop8NGNn/M4uK+icUfSlWBURSF9RERpu9i3uWi0HF9Kisy9s
	jHaoSZv1QWchTxe6EEDPCAU=
X-Google-Smtp-Source: ABdhPJw4VSDgR+Csi8TkvdyfB/IE25RQ1FHQm+3PNluIAJuz6vUJ4pwVGdIA5K6rzTaFV4qV9E+voA==
X-Received: by 2002:a17:906:d922:: with SMTP id rn2mr750413ejb.414.1612468568735;
        Thu, 04 Feb 2021 11:56:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd14:: with SMTP id i20ls7098686eds.2.gmail; Thu, 04 Feb
 2021 11:56:07 -0800 (PST)
X-Received: by 2002:a50:f296:: with SMTP id f22mr226225edm.159.1612468567768;
        Thu, 04 Feb 2021 11:56:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612468567; cv=none;
        d=google.com; s=arc-20160816;
        b=TvIRNzPJphEpExmJThJM0P34eXgsM247LBw3DgxEJkTvZV1SsPYWG0PEq+SvjHaO7m
         dA0UMtlSclGYrT6cyjzRzpF0k5YUgRDRC94zsVM61PpJy83abLr9m1fM13ZOfHJLx1VR
         GLyoCX9Wj6ozkqPWcLj1GqOjMjg7I+rfIxhiza7yRUOJAdrxtB/1tTI4UF2SZ9wFPDYe
         mUySiUCg5PbOIiHVHjtWd1gQrhPb8prhVGT1Dm1KfW6qEuyGyTYqo8wWioueGZD6l9cM
         O2hyqOIixHfofeWSxGis1hP9XWkSgAcJX9eBDwR2MKdGI/TjSkydKmYrkJTv5bB8oGgn
         8gtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=ZLpolrGEAQnlljk5ggjWy6aADpbm0IC9DtfjDcqz5Bs=;
        b=MTZ1SgHCvmZ6QFasouRqwR/KotXYeSbiYd4ApycOm0ldM8NXZx8b1tZ3weYGonoagM
         lbW2zeUsVFgbyp35Zg1s6fvn7CZVe7H+FQHlslHpXYLsuGRfhB4fNmSDzNhC+Ol/7URR
         pVYKmL6vliJzrDwcg3rT3nrgC7r1BH5VrdPkbp/eCp7lq6+uftyCpltm6v3iki0TGC0Y
         350hz4pNaC0vBNrlZtoHBEbHSzKp7DstH3cn/5oU40Kex5s21tR0nskuljD7rr1eROm3
         zrJKI7CtxyiLKGQuXQ27r9HfvgX5D2A9UNSWL46T0zi96B9K5B1clv9FXLp3Lawutglq
         4C/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id y20si291442edv.3.2021.02.04.11.56.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 11:56:07 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id DA19930278CD;
	Thu,  4 Feb 2021 20:56:05 +0100 (CET)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id 880BF40C9DA3; Thu,  4 Feb 2021 20:56:05 +0100 (CET)
Message-ID: <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
From: Mark Wielaard <mark@klomp.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Sedat Dilek <sedat.dilek@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kbuild
 mailing list <linux-kbuild@vger.kernel.org>, linux-arch
 <linux-arch@vger.kernel.org>,  Jakub Jelinek <jakub@redhat.com>, Fangrui
 Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton
 <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa
 <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho
 de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, Nathan
 Chancellor <nathan@kernel.org>
Date: Thu, 04 Feb 2021 20:56:05 +0100
In-Reply-To: <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
	 <20210130004401.2528717-2-ndesaulniers@google.com>
	 <20210204103946.GA14802@wildebeest.org>
	 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-10.el7)
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

On Thu, 2021-02-04 at 11:18 -0800, Nick Desaulniers wrote:
> On Thu, Feb 4, 2021 at 2:41 AM Mark Wielaard <mark@klomp.org> wrote:
> > On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > > the default. Does so in a way that's forward compatible with existing
> > > configs, and makes adding future versions more straightforward.
> > > 
> > > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> > 
> > And since GCC 11 it defaults to DWARF version 5.
> > 
> > It would be better to set the default to the DWARF version that the
> > compiler generates. So if the user doesn't select any version then it
> > should default to just -g (or -gdwarf).
> 
> I disagree.
> 
> https://lore.kernel.org/lkml/CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com/
> """
> I agree that this patch takes away the compiler vendor's choice as to
> what the implicit default choice is for dwarf version for the kernel.
> (We, the Linux kernel, do so already for implicit default -std=gnuc*
> as well). ...
> But I'm
> going to suggest we follow the Zen of Python: explicit is better than
> implicit.
> """
> We have a number of in tree and out of tree DWARF consumers that
> aren't ready for DWARF v5.  Kernel developers need a way to disable
> DWARF v5 until their dependencies are deployed or more widely
> available.

I agree with Jakub. Now that GCC has defaulted to DWARF5 all the tools
have adopted to the new default version. And DWARF5 has been out for
more than 4 years already. It isn't unreasonable to assume that people
using GCC11 will also be using the rest of the toolchain that has moved
on. Which DWARF consumers are you concerned about not being ready for
GCC defaulting to DWARF5 once GCC11 is released?

Thanks,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20fdd20fe067dba00b349407c4a0128c97c1a707.camel%40klomp.org.
