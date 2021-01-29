Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3O32GAAMGQEWJWM4JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BD4308E43
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:19:59 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id i9sf4582878oih.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:19:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611951598; cv=pass;
        d=google.com; s=arc-20160816;
        b=xLrZNDvL467/u513qjU1Za/ximFPfFvbzeuM6Ou8p8Ub6FazTGOvDVjOeKf6Xb8l2E
         BQRp6LDQ0k2ttDmvFGxZlO3Ffa57VCR3qp5TmrP4mMa/aRdVcMEzDztGnSoeRJ0oMMnw
         C0GnBHFuXOUWufN/oY1rfTTl4nfbwJab+tLRqLmrbXsCnTQfIaC7hbEf6FzSDzshmSPA
         4V2fODpOwgVU7sO42eXeCKHZLmtoTRN6Gq45GPH/MU9V41/7IkoLO+F+6sZjCBKjZZbr
         Hx25bW8EN+uE9UqFAJin4qWKys7vHLpw7H8jZLGg57HuPsEP2+bpspkbezC1A8asho5E
         MCyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wAdniqW1CGVB60s1e4HdufIhsVtVniW7VtnJDtaeCjc=;
        b=bLbCpl9YIAZVevF1mOEKVa03EVoK8jZGRodwPHiWJ5ScUQ5X2IA/heYfO/yMdH4zpa
         6bzzb3IeZMssKNSqUlqQBqvCeUP/AHHveUkLs09cvdGZOeZIme5ZkZGrQwWkdQ9KmwGJ
         LXoEhwN7wfqE8QYl29WuD9U6zl1YNPZvekdpDMucCefLJkixtfIySGhRZ6wdZGPGGcq8
         eIi1x9//3mkvUph3E+5YThhUkz+mnsk3C0rByM+2lvIpEt+7dRQSCk89haFyT9eJg1ge
         AyeLKtXyR4agLAZ0Yet1+hwTxF6cTXeZQG3/xT8bc2VfE/5Ft/JXzIulJ0bBDmrEEWZd
         CLUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rNZQoLZg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAdniqW1CGVB60s1e4HdufIhsVtVniW7VtnJDtaeCjc=;
        b=jdzUJvYDRMNl3lBt3D99vEHUfWD5kLPy998b7sgJjiI5Tg1o1uc7Nro+EPcyGellz4
         x1WYzezSaQoxTeAexPcueQfMXuLGN5BZ6Mi+vxqcfdo1GbWgAWtyAqqcKbuAr3NSFcYB
         b6UQzCcc4geDFnWLAHNkxlKn9Xzxriv+CAfW/p28d2bhmssqGzS/tqGZbK51DOhrAJ07
         iuwJX2GcMxSfZjQ5AjD7g+DMzhE/TpsKClmG3HEfaPfgBU07NEtwmJiG7avAf0r3FnLP
         NryfhNRS/patL0gXrURLkfViwBH+RlBLNnWuzXQhmO/AKJepFsm6VkwdeI9RyWwR2huK
         IiJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAdniqW1CGVB60s1e4HdufIhsVtVniW7VtnJDtaeCjc=;
        b=YDf2Dxec5e1h6c9zmEcl3CWtKr0cFnC4EKv9gJ7oguZd8/KEkjO3IStCxd112JcD9Q
         GTYxFSJ/La2+41w6cIrVPbSfJ6kKSgDHvf+IqK/X6oJI5UkSJEje+59sWj479Y/Ka3vO
         kL3xOAgklHu5x4Hv0TYWqwT+DWCwZuN95xvoCJYtMkjVkxofICoElMYtDj/VfbEw6uSU
         vPzknGKUwH74ZqAT/a8v0ymxdwtWlOlgk5vkXQDvmvGZwA9W8g6VSp2aOKnmOPgDwWL3
         jrZyRvC+jGptccB5BdfkvivyS+liDrFrgrpYSNPkiG8fjau0hawMJFIq3KG8N4u8Xjlw
         /saQ==
X-Gm-Message-State: AOAM533oygX9DCxW5Rn44aE/NLUBb9FRqbJP7avrg/iFJEA8MlKsheW2
	hnbjeZqI9O+itgF0B5dx+tA=
X-Google-Smtp-Source: ABdhPJyUd2cIXzMmCi/DktQ9Sm9mZoPwUToL4XZjdu1RNmg/FYk7FbCPqE45TBAtLf4ovyLeat6GVA==
X-Received: by 2002:a9d:1284:: with SMTP id g4mr4160661otg.128.1611951598005;
        Fri, 29 Jan 2021 12:19:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ad50:: with SMTP id w77ls2341641oie.11.gmail; Fri, 29
 Jan 2021 12:19:57 -0800 (PST)
X-Received: by 2002:aca:f00a:: with SMTP id o10mr3770115oih.128.1611951597599;
        Fri, 29 Jan 2021 12:19:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611951597; cv=none;
        d=google.com; s=arc-20160816;
        b=P+D999sUNQyHvBk8cUqfLw6KjIJSbQXLietPu5qJpYhL1UP6wkYJxJ4f6+IzZ9c3nG
         vnqbocAzkBMt5XJxA0p7/6+KaKoS85csYKpwhSHlLlWG98kStV8zbfvmBIhLZaiFPB9A
         aaMnlN4Ei5SJPFdkOvkF/2kJmn6FLAZ96da/OxkQ6f0N5UAS6IwGSPmdClGGxixwHc0S
         +2/xjpjyGuY09m4EdojeZUDamsDOl3m41ShjG5wSVniM0sJqG1YkDb+wr3eSoslFoMqN
         7ScqDRxZ65WY6bk8gE71zxX/Pm/33Jm3y6qPvhrKMBcYXDh5bytSjG4wEo4BWQCiL+eC
         I9Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x8T48UJksYBBzMUWKPVavtIXowDuSQOy7SfNWHvVKVo=;
        b=0FRl5i2JcehkVwR1tb/U+ehxbuHLwCEXZ5pegcu3QYI1UFBpSMz69GC9/AW/xLk6qm
         rp/iKk/WqSZHHPHNRuhPPn3ykrGs4kobliWKFkLL34dyYW3tm/oIxwAbKP428aHd676Q
         ZxkjaTxD8ReeHc284/KO+JDyQBmzQ+sBBKQFACalyQbGx8/8wqCTLzhp9FczgPablaIN
         ufz8R7a3/VU6z6qEfyrGcWvm4ohvja7Lqdz9RCxvG2N9IaiKbFGVprT9YYbiqT/LB5Qo
         bEvGkpXz72jnTK32R3Y/8v/rx0x/8ot3w686rx9vK++Ux+/arJagEbJ0wZG2JVQRsRp7
         6Dlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rNZQoLZg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id r8si601709otp.4.2021.01.29.12.19.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:19:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id j12so6918346pfj.12
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:19:57 -0800 (PST)
X-Received: by 2002:a63:9044:: with SMTP id a65mr111512pge.381.1611951596804;
 Fri, 29 Jan 2021 12:19:56 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-2-ndesaulniers@google.com> <20210129201712.GQ4020736@tucnak>
In-Reply-To: <20210129201712.GQ4020736@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 12:19:46 -0800
Message-ID: <CAKwvOdkqcWOn6G7U6v37kc6gxZ=xbiZ1JtCd4XyCggMe=0v8iQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] Kbuild: make DWARF version a choice
To: Jakub Jelinek <jakub@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rNZQoLZg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

On Fri, Jan 29, 2021 at 12:17 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 11:43:17AM -0800, Nick Desaulniers wrote:
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > way that's forward compatible with existing configs, and makes adding
> > future versions more straightforward.
> >
> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile          |  6 +++---
> >  lib/Kconfig.debug | 21 ++++++++++++++++-----
> >  2 files changed, 19 insertions(+), 8 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 95ab9856f357..20141cd9319e 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -830,9 +830,9 @@ ifneq ($(LLVM_IAS),1)
> >  KBUILD_AFLAGS        += -Wa,-gdwarf-2
> >  endif
> >
> > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > -DEBUG_CFLAGS += -gdwarf-4
> > -endif
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > +DEBUG_CFLAGS += -gdwarf-$(dwarf-version-y)
>
> Why do you make DWARF2 the default?  That seems a big step back from what
> the Makefile used to do before, where it defaulted to whatever DWARF version
> the compiler defaulted to?
> E.g. GCC 4.8 up to 10 defaults to -gdwarf-4 and GCC 11 will default to
> -gdwarf-5.
> DWARF2 is more than 27 years old standard, DWARF3 15 years old,
> DWARF4 over 10 years old and DWARF5 almost 4 years old...
> It is true that some tools aren't DWARF5 ready at this point, but with GCC
> defaulting to that it will change quickly, but at least DWARF4 support has
> been around for years.

I agree with you; I also do not want to change the existing defaults
in this series. That is a separate issue to address.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqcWOn6G7U6v37kc6gxZ%3DxbiZ1JtCd4XyCggMe%3D0v8iQ%40mail.gmail.com.
