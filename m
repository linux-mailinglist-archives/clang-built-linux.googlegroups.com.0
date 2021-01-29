Return-Path: <clang-built-linux+bncBCIO53XE7YHBB5P52GAAMGQEZOO3Y2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E01308F7A
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:32:38 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id u10sf6495503pjx.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:32:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611955957; cv=pass;
        d=google.com; s=arc-20160816;
        b=p3E0D6eE5MABkGeaRG1e4BSqSHLAmk2M/dY3GLW/YeN7Gpkq0Uov/tgXGCIT419/lK
         dlM+P4GpBu3DKp5NI9YIbwhxB8UG6fqoJNRB0M+Lw6LRbs5Zvj+zdbIb8J86hyeHImFu
         V67ECyDyn00qt+DJjLHDcZL0ZBJIMrnPAutVBOlI/qYELH7d+jqRhHtwzMy9y+tN/f22
         1CMDUkW8+0oTvd4QAk3YnBzhd/hJ0Jgs1tjGQHJr9lGWcTZib5X+d2irwxG5rzKRSApH
         aY9wDoulDyiWo/kJYn4uM4ZZ20tWIDmWFXqQxfrLHH9WFl5CoO9TYDDznaCisMQM0hwa
         RwPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h2fkqmNwi9EReV3GJqr/s/rEA2bdjWMFvHBAC2VBd8A=;
        b=qHXe5tL4Z5VdoLG0i2nV5/3o0BAAFrowMVtsEmDqYH/7cLl5zbkWny8c/Qs2Xdt3td
         Nqwn6gBuc0/C1uXrV++oSWh2x1EHfFDoxOzHvbeRMOlTf0Fa46m+30mRssf71GcIjleq
         yHbcJGiMqeAQGJtbY71+yd3MyJUzRU0dPmKwhs2VtOFVffZ+XLBJatHLIV2+cGAw5G1A
         9I7/jbfChFXy0B+5qWBri6eM2J0GMU6JymOC18A6SFvRYLNbwddeWsVdjVJZFiutwXPv
         8agJT+zEO1gxjWV7fjCRksfdGFUCWbdfZPIAHEB9GlkpXdzvEVTDAumErz5sqYAsymZF
         vDDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.177 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h2fkqmNwi9EReV3GJqr/s/rEA2bdjWMFvHBAC2VBd8A=;
        b=dpnv0GHIsQ6RLnAS7oloYCx2DJheziWNwmLQ7H37qP5s/b4f5JauKaW36h0Exl4V85
         usxvEWqbl4hhSvyIyGo/B9kpsbCyDZnOGMS2554tuYfPc/z4niivHqH5Sm7ojxrB0oxz
         4xuV9xkwnHwohMUVjptV4blOxyoNT6oEv2VdUME1UxFzS9r59jtGH4qNr83n/z0e3rU5
         Y5lgvJDSinFTQmMoRDbBj4rAjpoFyauxKCK0TG1+WrD2p5AStj/DMFEN1+Zg//d1YmUs
         FQ+l8TdHWBr1T4jg/0QD/IMe/jYov3W3Z6QJxkiRmhvU7rbI2nSIIgNIOD9/oG7QZHZX
         /n5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h2fkqmNwi9EReV3GJqr/s/rEA2bdjWMFvHBAC2VBd8A=;
        b=pU3KtyTIMIiwl8S5KxQNGDe/yJcG4yKKixV40vZBbh55T7c1dGmwJKbC/n04QcP70U
         ofShgmhTnOy+07QtBxvNT1gyGoBHe8Z49sI0WC4QiIRDaZyuy3+dAEfc6QE2wXKilwHI
         7emOVfcun3k2u9ra9Z/9yTjS3Ys7XwaWkrHfKZwXsxvk4G6vA684wJiA53eG+maORBen
         0eEsFgkdeN/xcMatMEJn+R6YUCCj3PPRH8qdLMZvgofcbfyrEd1/uIZIcd1whTUGydOX
         KEi4h9hFqzxXBjCo0WL6pwO3cUdVUDi67vujT7OZq0fuAxjG8P+vhkXrvtt+GTbjid13
         5THg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315wBRXVjimoQ+8DzIm5bIJyLpsZ5PbQHwvk3D4ojN9YjwolEJR
	X5WEyvd2wGRpRiIiAnB9i2U=
X-Google-Smtp-Source: ABdhPJz3D7sIZQYhoVKHQX9mAzzI4pWsECmmJ3RN5CBzUZQsjZLNPNLq/pMIuAQ9g/8w8CMWqgLScQ==
X-Received: by 2002:a17:90a:5208:: with SMTP id v8mr6368825pjh.224.1611955957552;
        Fri, 29 Jan 2021 13:32:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a707:: with SMTP id w7ls2693940plq.9.gmail; Fri, 29
 Jan 2021 13:32:36 -0800 (PST)
X-Received: by 2002:a17:90a:d189:: with SMTP id fu9mr6403085pjb.98.1611955956695;
        Fri, 29 Jan 2021 13:32:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611955956; cv=none;
        d=google.com; s=arc-20160816;
        b=X5d3uUr0+6VS4tItKjzw2yIWV5p6muE3VpMCG2ndD+3LN99uhiOfGoZ+KoWpm5wHfI
         NxzqiBdE6bQUAP7QCBQ1CQnXGptY+ycVx+uW3HG7GhBHhYWDGvIJZ6GOL4Q/jRKPsbTH
         JZvOweU2B3bfjmQLLxn+/Vt3s1gxEnxcdOLUg8LgghY9luDGY2z2ljkFN916NHNydyg1
         5CvieNF67Vev/mo6hpe5A2lLhO8+jqh4gEpwtoyl5IWrPT8QcQIOR2SdxMqI2einvbX0
         fWpKPMgIqR6PrCPHNU5a3EQ5TX88ghjFPuCRsJXOLpQeuqncg6VHoetlnLDrAuVYiaSG
         18Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Cv/H+UXVfiojhZIcXbfkk/ErDokGpMJ0LpJMoYEpdpA=;
        b=j8rFMSa/rWTKnqbRZwkqhQYaZ4Ph5QKlDrnF3jPmwXFxk9hYCwfuSdMU/7aPREEg2i
         uIhKGVCVNmk3NFzrmD+iCGHnT3Lt6dlflfr3wNRVY8jKelR1hxK2j5bMZ2FblWwb08rE
         ISRPDYclaGDM8Tt/v+vt4idvxXcDfzvEcaKn1Om6i9pbu05z1R0RZT44sG7zY9mwSK8K
         rZlu3eaB0kNJvvXdA1NmS+tdjv+HZflSQmfC414rQleNDNBygIe/NLnFIxFg/ZK75lRQ
         oYJIg4fVzI77eIUrSyIpmzGliIEtPkAweBHt9mns0nXOYxIo0/mqvRQo0ZV4am2f4Dre
         LcnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.177 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com. [209.85.222.177])
        by gmr-mx.google.com with ESMTPS id jz6si504840pjb.1.2021.01.29.13.32.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:32:36 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.177 as permitted sender) client-ip=209.85.222.177;
Received: by mail-qk1-f177.google.com with SMTP id l27so10212409qki.9
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:32:36 -0800 (PST)
X-Received: by 2002:a37:cd5:: with SMTP id 204mr5672284qkm.410.1611955955712;
        Fri, 29 Jan 2021 13:32:35 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 22sm7068680qke.123.2021.01.29.13.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 13:32:34 -0800 (PST)
Date: Fri, 29 Jan 2021 16:32:32 -0500
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v6 1/2] Kbuild: make DWARF version a choice
Message-ID: <YBR+8KLWnjnMfP6i@rani.riverdale.lan>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-2-ndesaulniers@google.com>
 <20210129201712.GQ4020736@tucnak>
 <CAKwvOdkqcWOn6G7U6v37kc6gxZ=xbiZ1JtCd4XyCggMe=0v8iQ@mail.gmail.com>
 <CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.177 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Jan 29, 2021 at 12:57:20PM -0800, Nick Desaulniers wrote:
> On Fri, Jan 29, 2021 at 12:19 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 12:17 PM Jakub Jelinek <jakub@redhat.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 11:43:17AM -0800, Nick Desaulniers wrote:
> > > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > > > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > > > way that's forward compatible with existing configs, and makes adding
> > > > future versions more straightforward.
> > > >
> > > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > > Suggested-by: Fangrui Song <maskray@google.com>
> > > > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > >  Makefile          |  6 +++---
> > > >  lib/Kconfig.debug | 21 ++++++++++++++++-----
> > > >  2 files changed, 19 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/Makefile b/Makefile
> > > > index 95ab9856f357..20141cd9319e 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -830,9 +830,9 @@ ifneq ($(LLVM_IAS),1)
> > > >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
> > > >  endif
> > > >
> > > > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > > > -DEBUG_CFLAGS += -gdwarf-4
> > > > -endif
> > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > +DEBUG_CFLAGS += -gdwarf-$(dwarf-version-y)
> > >
> > > Why do you make DWARF2 the default?  That seems a big step back from what
> > > the Makefile used to do before, where it defaulted to whatever DWARF version
> > > the compiler defaulted to?
> > > E.g. GCC 4.8 up to 10 defaults to -gdwarf-4 and GCC 11 will default to
> > > -gdwarf-5.
> > > DWARF2 is more than 27 years old standard, DWARF3 15 years old,
> > > DWARF4 over 10 years old and DWARF5 almost 4 years old...
> > > It is true that some tools aren't DWARF5 ready at this point, but with GCC
> > > defaulting to that it will change quickly, but at least DWARF4 support has
> > > been around for years.
> >
> > I agree with you; I also do not want to change the existing defaults
> > in this series. That is a separate issue to address.
> 
> Thinking more about this over lunch...
> 
> I agree that DWARF v2 is quite old and I don't have a concrete reason
> why the Linux kernel should continue to support it in 2021.
> 
> I agree that this patch takes away the compiler vendor's choice as to
> what the implicit default choice is for dwarf version for the kernel.
> (We, the Linux kernel, do so already for implicit default -std=gnuc*
> as well).
> 
> I would not mind making this commit more explicit along the lines of:
> """
> If you previously had not explicitly opted into
> CONFIG_DEBUG_INFO_DWARF4, you will be opted in to
> CONFIG_DEBUG_INFO_DWARF2 rather than the compiler's implicit default
> (which changes over time).
> """
> If you would rather see dwarf4 be the explicit default, that can be
> done before or after this patch series, but to avoid further
> "rope-a-dope" over getting DWARFv5 enabled, I suggest waiting until
> after.
> 
> If Masahiro or Arvind (or whoever) feel differently about preserving
> the previous "don't care" behavior related to DWARF version for
> developers who had previously not opted in to
> CONFIG_DEBUG_INFO_DWARF4, I can drop this patch, and resend v7 of
> 0002/0002 simply adding CONFIG_DEBUG_INFO_DWARF5 and making that and
> CONFIG_DEBUG_INFO_DWARF4 depend on ! each other (I think).  But I'm
> going to suggest we follow the Zen of Python: explicit is better than
> implicit.  Supporting "I choose not to choose (my dwarf version)"
> doesn't seem worthwhile to me, but could be convinced otherwise.
> -- 
> Thanks,
> ~Nick Desaulniers

Given what Jakub is saying, i.e. it was previously impossible to get
dwarf2 with gcc, and you get dwarf4 whether or not DEBUG_INFO_DWARF4 was
actually selected, we should make the default choice DEBUG_INFO_DWARF4
with the new menu to avoid surprising users. We should probably just
drop DWARF2 and make the menu in this patch have only DWARF4, and then
add DWARF5 as the second choice. The menu is still a good thing for
future-proofing even if it only has two options currently.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBR%2B8KLWnjnMfP6i%40rani.riverdale.lan.
