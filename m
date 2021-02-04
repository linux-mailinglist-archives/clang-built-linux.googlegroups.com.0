Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD5B52AAMGQEK67IT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DE030EC57
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:13:36 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id e5sf1731495qkn.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:13:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612419216; cv=pass;
        d=google.com; s=arc-20160816;
        b=h88yA6DRARpz3tNe+kBvyXfnjSOKnNz56MNNf/EM16mOYylcr0R/4wgdQWyLGGjzd2
         RIXjeuNH6dcLZaS0EKh1so7NX/BOCIgyqyO135BgIuiO7mDSA4EGqDjsH1PfgRKRDb+B
         LmZW8hMpnZ4owZ5SHEr70GcbBydAG50LbdQE3FHClK7yjBk+SI9JGq1I+ZIrOML1tZ4h
         iXQUxk9dscKNN98CT35+VAIY+D0qpkX8ZZrCD/TgNFA68R2KoPHBIhtknU8RwjOBwmgS
         O1ttZBxaENZh+KpZPKainaCcauzctTOrhYnlEipEUuC8afo798vK9sLz2TPPUtyvM5KE
         cKEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=j9IIGHKolUCeO0zIMGmgsOkGj8DMJgghLx6Whx8CEL0=;
        b=vUOAQ2aqxzzV0cI5qyeisUmrSy6MzjlTwv7WOzSnPJwxNeTDdRAAoSyy0MYO3yskko
         T4bzp/xN/0Sx4uF+x6FifYtYCVsUcnqTFusU1WY3O9hyJXN6V20My5uuylhKDUWjXF8w
         6E3vc4l3wFyowsNkoacWemTkKbB8vHNXo/WQGQhP2j4n8jkPlS4IqrohGr9FN6smjFnz
         iRSFELfh0LT5aAA/7LJCbM9S73yz8897byBCCLaTDzdymOtQvRfjU/1zLwP/Mv2g6LnS
         AEbIK66+HvtMtqFYaSgh/qQF+Lg/vNRzwgp+6Xndk+skSXN2pJeyJj6u+Dg4KCe3E0dE
         jxyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XPBT5TFm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9IIGHKolUCeO0zIMGmgsOkGj8DMJgghLx6Whx8CEL0=;
        b=VYJc0kYmrEY1g2CJSXM09iJs8RGJeVLf8uQ8omgNliwqV4efV4uGEQUHeb6+ivbKSf
         Tmny4mqK6ohtXd/gILBhfJcZy9JBPUEyZr3jI42ilNKXlVZWZU/Sj5VF/+kV+OXIxRAM
         ZdPwC2nPxj8aOvcXfcX8EB2Gr60gXB+Ed8phg+z6DA9DizQqCDAq78/Ne4fEu3UJwLaw
         Zfgh4teSxhY7ylNUMbB4vUzfd/DxsT9Rag6zV9ydTnwnXj6aItaqzh4rJ7jR7PtRydq3
         AelD6H3Vj90+iq6TkoiSFX0nzEpC2hVWLDuncFkQfQNO3C0qKVz6+9WaNT/GPqaQBOKO
         MtlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j9IIGHKolUCeO0zIMGmgsOkGj8DMJgghLx6Whx8CEL0=;
        b=PP0L3fNTCeU2Prxu0WIn7rsCRVJkcbiBe4c1DKXcYivB3VCde6+1mDl+N5LqBQMY2R
         ozTU8vf1cW9EQJD1r90MTuIymT9wCiQcd5e9RS/WcIa+ihUzvxMpiL/+ZIPGRKf/CT0v
         NP6S4eAYMIF+a5lhzM9lQMtSx7Qn6dWu4t2s89oyflDPENetP4WCiGE2WCLkX1J2rviw
         +4bPJ5pGoH+6Ob2i9u2dabEl2LHps5y0Xf9TQIE3GIrt0/EJqTSSW/lLKkMtpjzAFZvw
         q1HfvBuaLcX5I322qTpm5v9x6eFSFTTLbKqPJ4guwwM9QGt9H/LOcue839uNVbHbS4Lv
         aqcQ==
X-Gm-Message-State: AOAM533oUzEczXQiVqs8QBDOJLFg7q7anbkxsQG/5VP0yHsp+nEkSH3W
	XcECBXdJcYJobg9B/PCriew=
X-Google-Smtp-Source: ABdhPJy2oorpVjgdbxy/LoWBCVIrDKB97hHng0WZWKGqDx2BXxJAdhPCS9qOeKhBtZPk4BX9C0PVMQ==
X-Received: by 2002:a37:a802:: with SMTP id r2mr6225360qke.197.1612419215892;
        Wed, 03 Feb 2021 22:13:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a511:: with SMTP id o17ls2510724qke.8.gmail; Wed, 03 Feb
 2021 22:13:35 -0800 (PST)
X-Received: by 2002:ae9:ebd5:: with SMTP id b204mr6220322qkg.33.1612419215477;
        Wed, 03 Feb 2021 22:13:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612419215; cv=none;
        d=google.com; s=arc-20160816;
        b=B765JLgSIfwGoxk2z+SDWTP5DHrTKCjK9qvlkbVtpsxcOI26lAXJXiPQF792mMXtWm
         /fuFLlYRr4V1f+cQ103riFCdhPQB+MnmkRDZrwn3abpdTL25w3LHNAXj7gQWHHXKTihe
         tlcKUgp2JsiD/vi396Ihm3ud693QviruW9ztEMrjXCnJSkL+KUEU+YsIP3xNkc4QNq1y
         UwlohupnrnUs9MytqjBWx1A1hznqBNwVoRMw+GFvet/OxxvBZhNpsuparKzrn4hgSODW
         3ty9qeDzbfSHdKY+CbEBo2vHk3TLufFWbXwEo4fAVNJDvFHANYItwwmqyoDo6/0remAw
         HKzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ncXEJ1dZpoFNtJ7RLMyE5p7WlT1xC95XJWCpTzmVYWE=;
        b=pC+cTLYJAuOVNFIIqUGi80HV4dPUYaWCxzaVJQS3vvCrJQgQPlAMElJELHprKGfYQn
         8BGb9hslCkEr5GGpuSsNxbgCns6hXh9vqMD3vnGjvp3ztjHEzla0B9cYAW6w+qPRn8cG
         8m1eDn55mA7vjcX7/rr8LFKJZ5bAWzhFor6clr7HWzMM/LC1CNz3re8O8pYVpGgkvP6e
         7k6XvkSjbLtu2PbjKkkgyIx0eEZtPpbrX5dtF/Xm+5U8CUcjgsxB65M7uyXgh6KjIpNs
         r/QzzG1DYeK4m05TQ1riAtlN1z8sQAynOne3rHRK6ybzfbQEIK9W03ZK7xlQEg5vG63g
         nBng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XPBT5TFm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id m8si330843qkh.4.2021.02.03.22.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:13:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id e9so1177306pjj.0
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:13:35 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr6808235plj.56.1612419214450; Wed, 03
 Feb 2021 22:13:34 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
In-Reply-To: <20210130015222.GC2709570@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 22:13:22 -0800
Message-ID: <CAKwvOdkJMfhSBDNsUXbmgF970=766eJZF1E0=8QKCwsEAED1tQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XPBT5TFm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1034
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

On Fri, Jan 29, 2021 at 5:52 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > the default. Does so in a way that's forward compatible with existing
> > configs, and makes adding future versions more straightforward.
> >
> > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> >
> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> One comment below:
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> >  Makefile          |  5 ++---
> >  lib/Kconfig.debug | 16 +++++++++++-----
> >  2 files changed, 13 insertions(+), 8 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 95ab9856f357..d2b4980807e0 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
>
> It is probably worth a comment somewhere that assembly files will still
> have DWARF v2.

Such a comment should have gone on
commit b8a9092330da ("Kbuild: do not emit debug info for assembly with
LLVM_IAS=1")

It's also more complicated than "assembly files will still have DWARF
v4," due to the LLVM_IAS check.

Further, such a comment would be inappropriate for patch 1 of the
series, which simply changes a Kconfig option into a choice.  I will
add a note to the commit message of patch 2, and carry your reviewed
by tag.  Please nack v8 (which I plan to send imminently) if you
disagree.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJMfhSBDNsUXbmgF970%3D766eJZF1E0%3D8QKCwsEAED1tQ%40mail.gmail.com.
