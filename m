Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG7JUX7AKGQEDPO6W4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E1C2CE29F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 00:28:28 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id o128sf1782121ooo.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 15:28:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607038107; cv=pass;
        d=google.com; s=arc-20160816;
        b=JAI1kzMvy1jIRf9DAaqhfKIxI+2n0FNNODa/OJNQyLv3H/5jxoFQ2x9OP4FK1fw13a
         SDikaH6lmLE8g7gKOxwv0FfVThKFWJwljNpZigWZTbDEqalh+6RyxcQX8M84pSxDDicG
         JQQ5JODMx3r7faaM14vGSH9gVkXQtQlZVUB915Ly3j8i9/KtT/kUHLS3MW1lBbGth50R
         ZyBeoH3nv8LAvQAdjWVd7b6f7Kpzz9F8oYy22VP7V02qJ5Xtcbizkpa81gm0Nm0OLu6/
         J5pLiNIuvZgyr/MZkibL5pMRS6+MECJ15u2NmiHYyG6mYhonD1SMzCtjJLWrUFBBbJRU
         2Q0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h07/eZAXN08PzPr6g9yV6pYOmEBiQmwAs8RP8Zzzwjs=;
        b=B6ajfligNc0y2WEU73KEJ6Xd1g6DP4CwivVe9u8bPlhrgac2wYKnRXFRCrGSzHFVsO
         NCUQsfr7RxgdvDcsXY1Qq1Sn5Ei/56Vf0/K5UVGT/6sVdKxB5L6JzIciU03fmV++XFgP
         sMFXRCNbWlUU+HbDa6wfFW6uBMcVv//2cpPiJvtOVdCJwlY9nVDoKNopmCYePxJczIen
         9NBV+m7Jd4VEkgF1E+Ggqu3SyOMmU7DIhuSgpqOCfxlToixEOXKdSoo7wAYHnWvuf4bt
         EcF2+01jV2+ITEsxlp6XMpBFfJsq/lBE+CFA2KfgBbEvcXR+HQsWtJ5fL3zaaC0QV12n
         MUgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tl6txBU+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h07/eZAXN08PzPr6g9yV6pYOmEBiQmwAs8RP8Zzzwjs=;
        b=PyUXWlW0KqcCMxJcHl9W5q+tA3ds5zRp3CcXrwL4QJ2TPWZJ1YaCO/Wtwqhtq+UmWI
         PydR0zcocdi/RhcR94104Mc2jLtl1qWSZzYHS0MXsAxAJD9S354XXf35Lfp66ZvAmQ6n
         S6tM+9AqeBH4VdTCf4TxDdtiQnBiJHaUfvt5U4ZEt7PPcfHaYbN1Ymhbn5RTgGZVNNjr
         9taKHJzG3S9EIkOuKchRyXI5YqPdtDib7OI0zzwIyxGV7NF+8mhUjLY0R5Fp9x8UBQzg
         lg0Yb7n7W2QsKA/ZCMVw4OgQHy2rzMnfrsfvhhg2RNn+iUyjK7IqUUureYTBQjtVkhE+
         DRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h07/eZAXN08PzPr6g9yV6pYOmEBiQmwAs8RP8Zzzwjs=;
        b=kiOgQSQfJCWeWcWraoLiKwJhSWCgD37XPpNiux+AYT3L0nNBTqx+FxXg94fuQU3HMK
         ccyKI5q97yfjtllMk214sF5ZOVgG991Pf9gRwhc4axjXk2hXbOgbLWjjPUtPZ7f7colG
         xZxbSAFhgSwuHzixWeuUeuLS9FXp1x/Zn+r8AcBp+fAsCYEpY85wtilXxbL6hRZe+2lV
         5ewvBCE4LOuYHNWFrZrlm3nx4vyCT6uF/UQub6mLT74dsuU/Sc8ChOOIsTget3RbgJ80
         FCk4/NlO8z+06uPXw7mVFkNkHAjYPLNTY/Udd+uPrjmu791GHEq7xigoITJtEoxAehXu
         pIUA==
X-Gm-Message-State: AOAM533sZ4s5IAF1FnJaqqw9GB7pnm0v4wN6sbMB+15na1y80xfV6jQt
	BLTc+laRl+GWUZnh50ukkq0=
X-Google-Smtp-Source: ABdhPJxMoJAIzjuZSgiPQNaGUuLi5Q4CXDqcnXoEi+7i+hrYtkJXlO/AzCtWLRYec+ljbA5S6b6DgQ==
X-Received: by 2002:a9d:223:: with SMTP id 32mr1422802otb.84.1607038107270;
        Thu, 03 Dec 2020 15:28:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cdc1:: with SMTP id d184ls613700oig.10.gmail; Thu, 03
 Dec 2020 15:28:26 -0800 (PST)
X-Received: by 2002:a05:6808:54b:: with SMTP id i11mr1143262oig.7.1607038106890;
        Thu, 03 Dec 2020 15:28:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607038106; cv=none;
        d=google.com; s=arc-20160816;
        b=IDqcPhqPInH9YMxk7/sbSS10gLhMKhRIvf4RfK8RuXRC+nFXI7aSZKOX5W+DwEgwMx
         uV5ZOqnIrbeK3GB27xpPRJvk0rLR6RUq6299oRnzPoGMcon78+Ms30yJ57VDi/M10HW7
         K8yOxdYbWQ4y1f6ZLuEK7we4HQi6r7Xkqc29Gg01zQn7pwqfHlUCTZbQ7vbx7yW2WAV7
         mopoIuN7/l08tUbD6OJ7K8XnevobDMd58hW5cgfSxfI5+17L3uBKaJvxE04dbLB0RfVf
         qCdQHpu4RbMtaP9OZLbPt4M4JLEfKPmGP919QYxl/0YgE5QfaBhgE+J8OH59LhTGiUJV
         9Xag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VZd5mQQ4Yh6641GciI7/R39T5bgJu4Raw0a7sjqJGxc=;
        b=L5fk0o8FWk6oHLTmj+XOcMjR5eyV9c+ohl6D9Mbv3lrdsW3g8IXqRUL0MKF/auLiTX
         QdMRJsgq27/7RD/1UrY32rdLus5VlkpZBPapWE19Pe+eptTVTKLOYprX5jQcUlfKk/LG
         MfbXtXOLkug+qX/pvqdewYX3Wwu+yNW54sVuddHhBajlX9pQhW0Cg6aA/rJWMNZYvH8Z
         AAaWHaP0ZKV+9QOdUhQISZtvA4eGx3+hTWfWZ3HXakB5P9JXoUBBI3i/QqIPESzh/oOy
         /rkAfBSHt1V0o0McSKOn7Ccf5feojfBzi6oeqIvvFYRb18Uia5eJoYfFDNogJmyDPyJi
         8pJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tl6txBU+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o23si63208oic.4.2020.12.03.15.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 15:28:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w187so2400418pfd.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 15:28:26 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr5151471pgy.10.1607038106075;
 Thu, 03 Dec 2020 15:28:26 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-5-ndesaulniers@google.com>
 <20201124172836.GA346213@rani.riverdale.lan> <CAKwvOdkGvLrPr4pHi4LKCF5t74+wencdy7r38d3k_4pC9pQYwQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkGvLrPr4pHi4LKCF5t74+wencdy7r38d3k_4pC9pQYwQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 15:28:14 -0800
Message-ID: <CAKwvOdmEVM67v8PqPWHP-VyGTkQpkWv8FdOTbxQ-7ebvSummMA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tl6txBU+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Dec 3, 2020 at 3:22 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Nov 24, 2020 at 9:28 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Nov 03, 2020 at 04:53:43PM -0800, Nick Desaulniers wrote:
> > > DWARF v5 is the latest standard of the DWARF debug info format.
> > >
> > > Feature detection of DWARF5 is onerous, especially given that we've
> > > removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> > > support.  GNU `as` only recently gained support for specifying
> > > -gdwarf-5.
> >
> > With gcc, using -gdwarf-5 even without -Wa,--gdwarf-5 results in
> > considerably smaller debug info. gcc does not seem to generate the .file 0
> > directive that causes older GNU as to barf.
> >
> > Should the assembler support check be restricted to CC_IS_CLANG?
>
> No, because if LLVM_IAS=1 then the assembler support need not be checked.

Also, if your version of GCC supports DWARF Version 5, but your
version of GAS does not, then I'm more inclined to not allow
CONFIG_DEBUG_INFO_DWARF5 to be selectable, rather than mix and match
or partially support this for one but not the other.  Either all tools
used support DWARF 5, or you don't get to use DWARF 5.

> > >  config DEBUG_INFO_BTF
> > > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> > > new file mode 100755
> > > index 000000000000..156ad5ec4274
> > > --- /dev/null
> > > +++ b/scripts/test_dwarf5_support.sh
> > > @@ -0,0 +1,9 @@
> > > +#!/bin/sh
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +
> > > +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> > > +# in binutils < 2.35.
> > > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> > > +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> > > +set -e
> > > +echo '.file 0 "filename"' | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> >
> > This also actually needs --gdwarf-5 to really check the support for the
> > option, but older versions should error on the .file 0 in any case.
>
> Based on Jakub's feedback on the earlier thread
> https://lore.kernel.org/lkml/20201104121934.GT3788@tucnak/
> it sounds like the dwarf version also needs to be dumped since GCC 5 <
> x < 7 accepts --gdwarf-5, but did not produce DWARF Version 5 debug
> info.

Sigh...llvm-readelf doesn't accept --debug-dump=info for checking the
DWARF version; llvm-dwarfdump works with no args...at this point I'm
tempted to just version check GCC.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEVM67v8PqPWHP-VyGTkQpkWv8FdOTbxQ-7ebvSummMA%40mail.gmail.com.
