Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXPAQ76QKGQE6ZFBW2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAD02A5ADE
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:05:50 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id s9sf8894018qvt.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:05:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604448349; cv=pass;
        d=google.com; s=arc-20160816;
        b=GdBfgs3brjQtjE2nDAKSkhTWYt/2VU2fOPwUiQHD7zxLEZRzXThef4Z8LFjQjWavkT
         6kLBSAmef0QfwW+XF7oLBJDYnEVuWSdSibi+JJbEiH2CtBdl8nJSIa3bDOL1trmP0/9b
         NE3oP9qg8fTzmkHGvVKgbniy8z+HDbBiq5u08Wk0OFzXBws7fYwNzoW+bxsTX4GpTHAg
         fgEKl+tPZ3gEoc0F+Z7THPqD/mZehN/wVd1xd/mrFZmAqDoFVGeJCIn9m5dDrYymdooV
         KRAtgAj1nWQLDpkItgjTWKmd4vYl71dolZzc7utIFqH5vjI3RhAGhW7HhTqJFEIrqnE2
         +l8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sJtDjZOu/hXeFWWp1Nql+KlsVd2lbmSQotQnDFst2/o=;
        b=zebvvalZZVZpGo8TkcSBCmu5lJYq6paxZBpMo1NK5vIU2hgmogAh4TtggW4mLMajpp
         h497MiFUV24Q/U9MhGdiS9krIYnovYqg1pi2BL/ktHhKRMshb5I3kr6UoJK7sfSNR1wY
         96osTAhVYLWQmop4g3MmJ23z9Kx9xjOeL1h4/Oq+KzV4M7jxCxNSPc8hhu34r+D/v4D/
         f0J0tlhgegMa1x+79e+qE84cEpHf27khDkzGxHZKOD2fkYtfVBTkHAs5YYML+LbRZIEK
         zW+2yTfsIMYsOgQEvN5wyTq9yt7bypzEJwkvUM7xnfXglOH85aJ4rAVcfmgItXZT97mI
         E5iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R0wn1eCK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sJtDjZOu/hXeFWWp1Nql+KlsVd2lbmSQotQnDFst2/o=;
        b=bZp/vKjQ+Z0SYSlgxNIPDQz93hUM5+H3hmoQyU9o/UfBZTYRdWfvMEWRyHkb/FNcx5
         Lu1bpZ1FDRvXBrUDk4EXLNypocgaed7rc+hiHekC+PeoOYgnF6iNjUEjMM+kzzUreLFK
         t3sHETzv74ncPx1ct03taoapV2ZcRSX1p5t10o4jTNx3pbZSCXhrnfLvvcMxSMJvAnqU
         0SnnVtk+SrbeZK0IRD9pBeG+kYroOU7S6t3nwGpS9F49Tcywgw/WsYREQlI4ZO7n6P+Q
         Pv066fPXvhBZYV/ZbS5nwGuOG3Rwq6aZQNIWUGsTvngaMyOsQE0k0gUBgKAsz+IYWgZ1
         Xccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sJtDjZOu/hXeFWWp1Nql+KlsVd2lbmSQotQnDFst2/o=;
        b=HnwhcthbP5SDdvclMdO2aWG21IoZBPR+H5oTKeUSUwK3cAt8QVPnWIOcKkTXQT8YQz
         1/x7sevfoPiauCbmjdUGckZ6vsbjFkzQkQOLPi38d8DOsqyYr/0LPPAdWrP0sXQ937vO
         ykMEN7P+IegzWRvvgpCUzCfLp32YpC8sSa+Zacr324rYhuA4TDWe+LF+vFTbpN+4jsL4
         xpmAJeQvK+BZMeVTOnJTUKEK4hcW50wSl3+hZLhFxrRwTiCdEU6uYyRtHJQqpNt42eZD
         SvJ82qAObnMxNAVDGakQIwXCrpvHOwEYTht9d7j+pf19+5mf7ymS5913kGY0FBu+2eby
         h9jQ==
X-Gm-Message-State: AOAM530Yy6QKuM51o55T+pqPf9Oqbn/1v7dDwe70qeameXjUaJDO4wrN
	7FeUH8gYGAHKATPsjQeEXfk=
X-Google-Smtp-Source: ABdhPJxQHcZXy55owdN68CljIuwFQN5oVBZq0CXcGhVYcH/lQK06jGyBus+YI8DxNDfOK8JukBzgvQ==
X-Received: by 2002:a37:480e:: with SMTP id v14mr22543961qka.414.1604448349436;
        Tue, 03 Nov 2020 16:05:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:baaa:: with SMTP id x42ls44985qvf.9.gmail; Tue, 03 Nov
 2020 16:05:49 -0800 (PST)
X-Received: by 2002:ad4:4c4a:: with SMTP id cs10mr30278175qvb.48.1604448348920;
        Tue, 03 Nov 2020 16:05:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604448348; cv=none;
        d=google.com; s=arc-20160816;
        b=cVle1wDOzt/28ehjFXBcgvXUvI6AEf2Sll/I9EYlABP438oc8i/U/cgaiy1E6HOTLv
         Cec106iavxzfkq7pViv3wqlXxMD/KVgsz4bNM2wsydaeAwTsNCd4PZGz2T7zQLY2QUp0
         jE+/vV+nXKUFI8NQbDqzjIwnVZBQDJwzvQfBUVjRTIncyFutRc0QoOmgh/mAnDFy1HxG
         boXqsJUDE466bkKaLhAcdclPgXAdS/8wi+cVMfYDExJvhKe/FRYJvVOB+hOJdy8pyMaZ
         BWowzkIlSylLmoOY6Jx4nByoJEBj0lLghT55lZxZZjrs3L1wjs49xDH/yhGNHhoTJ1R2
         U5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IDPVpMjjQxmT8T6bAuv5nGEF9Cscu1+LLKKWzkBSO0s=;
        b=IBLQ4f5K6tl4kEeEv6K2/2JY7bdmuSvuHK9667RRwjwPynJ0QbF5GYFObu1ko5L7s7
         l6Abl4wgGVlysREXptUYh7z8oqxzQESZ6Dm7rP8nXw+0XQQifIGQAcVGCDGxtCMCLuWP
         KGpF2ElMXWsDpe8uqJcP0zYyqmUXgPQyXpgweR3kmnPiab+8G/PTzfnC9C6ekK1SZM08
         ysKdx9VYyBItXkNs2z+sORXCt+KEacryXJfGge9nqVoYcHu4j15Ip0PG06KCd6wo9XZT
         MNOHmpxlIgvFGCJBKKiReX22z8O8fBhqdeflY/iZTH8jJRgZnaAb+k0hwItjPIi7ZVXy
         cF7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R0wn1eCK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z205si31816qkb.1.2020.11.03.16.05.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:05:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 13so15780190pfy.4
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:05:48 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr1725520pjj.101.1604448347880;
 Tue, 03 Nov 2020 16:05:47 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com> <20201104000016.GA2399651@rani.riverdale.lan>
In-Reply-To: <20201104000016.GA2399651@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 16:05:36 -0800
Message-ID: <CAKwvOdnFstgMa3c+=Vo=QtFYsABDekVeddcPmP=8Pn2bqWfxpg@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R0wn1eCK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Nov 3, 2020 at 4:00 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Oct 21, 2020 at 06:21:06PM -0700, Nick Desaulniers wrote:
> > Further -gdwarf-X where X is an unsupported value doesn't
> > produce an error in $(CC).
>
> Do you have more details here? On godbolt.org, gcc does report an error
> for unsupported dwarf versions.
>
> https://godbolt.org/z/G35798
>
> gcc does not seem to pass the -gdwarf-* options to the assembler when
> compiling C source. For assembler, gcc will pass an appropriate option
> depending on the version of binutils it was configured with: if the
> assembler doesn't support dwarf-5 it can call it with --gdwarf2 for eg.
>
> If the user is using a properly configured toolchain it doesn't look
> like it should be an issue to just use cc-option?

I wrote the base patch back in May, and didn't revisit until recently.
I could have sworn the cc-option silently failed for the check
cc-option does, which is /dev/null input.  I need to recheck that, but
it doesn't hurt to simply include it for now, which I've done in a v2
I'm about to send.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFstgMa3c%2B%3DVo%3DQtFYsABDekVeddcPmP%3D8Pn2bqWfxpg%40mail.gmail.com.
