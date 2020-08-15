Return-Path: <clang-built-linux+bncBDY3NC743AGBBPFI4H4QKGQEU56O4JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D092451E7
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 23:31:42 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id mw8sf252340pjb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 14:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597527101; cv=pass;
        d=google.com; s=arc-20160816;
        b=U0rXVEqVJY1H+LYi/FtO0BO7+DL760koLO/yUlfC+h4Vk+S4Qcr6InhTkE5flii7p8
         a9KXXZBYbHbdqU2JHkI61vBlaynZl8Yn/Kt6qYN9Yilhtlkh8dOYqfX55rDKiaBFZhdZ
         YIB/lllt9uaSVBg9QfPflQ0YOfKh1GtQ22/9GoHb84BmM/T0Ym97m7fPgdyHoCL/i40B
         rDZBQWRVTZHeMfq2zgxnO8L2ZivB2aj4dSHB9NAvmTL/7L3q8czEROU59D+ojYm4I1AY
         sK7m46rY/Jd57XvM2FgAFPFS4PTtx2kDl/F9NiP9v3KVHqx7qBhpzCLT5CGAnx6/73Lm
         JtCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=4Hwx8m3uYu3m9lSwwSWJTya8tp8pt645+UOqbRgOw8I=;
        b=FozR78OsdFRvswdGYYx+GWXS4LK+/7hbPfP/z1VqV/+Hd8mku3zvagsqJEKdIzKLh/
         ei9nlVf5ctCOUsLP+rAKXd4H3pVxHQweWc/ZmqpPIAIJzsKzYM8MS5bm4A2Xk14NF0ME
         nljVNkkZcsigVcDkMFeRkGAmX0njXCNr3w5i4ZjQHcQum5iHPoqOt9/Ap8yydnMkithJ
         MpFuKhRbarTs23xXwg9UvBgmwWvk5AbIsxMEZz24AraM4hBHKNrLvH6KZZQ2U40Cp+AR
         GueaXiUamg+3FQCT6UVl1Zv4RISDzdgQHjc7IGr52Gf8vxE7u7H8hSJWui3NMNUfomfr
         SfiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.144 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Hwx8m3uYu3m9lSwwSWJTya8tp8pt645+UOqbRgOw8I=;
        b=ru2/BF2mQ1ZCCSANcNvLvXEr8dx41MEmC2+gLnY2hiWyWSXbvmiI7lEWNtT5kM6nXz
         u8XTIBoJIn3hw5aEAysjLUpRI0Jdpt6Ll5jncA7oD5YXpIGS5hsZqWS7CaPWc/j6viwL
         TLChcLslblIEj4WHSGGg2QPhXt5VTPHdb9dQg0VuisXrcf371CZ/Rpd7MJInfcJ/AcRt
         GTyNWCd72f1KvOCx4UC4fvNY5W+AQ6IbZv1siP/szl6bMp1g9UPD1CqqJ1eLwxtBfIhB
         1+SItcHNSwZniY+0nfLCWpiScKrXaCzLNvwFKNBUKjy7Axfw/pBrJ+Kf1F+nv94Gpf59
         +8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Hwx8m3uYu3m9lSwwSWJTya8tp8pt645+UOqbRgOw8I=;
        b=XrcISpQbExbipWvCdB2PLK+DMS5qhd+fMQP8noMoq2Ey313+a+7LSuvv/60VdukQr/
         qIiwy7+rroSw6Q3OBli7VvS69EGKLwADQHlrYFhQv/wRfOR953DEYK1X0okQ6Z1DYawh
         Saw+dYcBVNCX9mKzXtTFlISMyrtE30Tct5FU+YqWHxKRe3d0gtgz+D6HXP9ZOsZqM4Zq
         1cPZqOVvt5txS0KVc0Woertj9lyGqaCuIFeOLXWk/B7/VmhipQWI+q5g5pB+r8SYPW1V
         PphgRW4P0cAjHp9fzBW6YjjdodFMIM9B9VcVFfrjcL05RvA3Vgok3UgtCc1/S8tWAMoD
         pyIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323aqpuIAUG7S0ZrAc1UgWBHaWyiZpINHfe0/lRsgMAx/Oig62m
	koeB7NisjLdVJsUy8TrNjCc=
X-Google-Smtp-Source: ABdhPJy8ntMmLv7lGhB11An+gQFtc+3keqeussOGOfyd0Qthe2KjX9aL9D7+lZ/PiLAfvhd2KJcMMQ==
X-Received: by 2002:a17:90a:dac5:: with SMTP id g5mr6883227pjx.5.1597527100908;
        Sat, 15 Aug 2020 14:31:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls3363409pgo.9.gmail; Sat, 15 Aug
 2020 14:31:40 -0700 (PDT)
X-Received: by 2002:a63:ec04:: with SMTP id j4mr5568736pgh.393.1597527100458;
        Sat, 15 Aug 2020 14:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597527100; cv=none;
        d=google.com; s=arc-20160816;
        b=WrXGeIqwVDYXnyE/uA2bbvjWCLpNPP02MfZKcbSQswgtk1pAnp73PZUBj6BCj2eg13
         60GvHO84X6jSEiFEfYzMBTblOM3GEZ6lHWTjOR50OXChV2zsphZt7F6rMGXnVJ1YYycc
         ioChPPRcNDG8Zu6XlnP4DdXJcjHt3xPZhmDvdswofY8e86FTXrCw6iuj3FAnZTYyGymh
         3qZc1FCeBcS3f0/3gxJz6rIb90+dDpi4kAbPw3GQ+2N3x1Il1maXuquS4SaY0gZKju8/
         Hlb+xjqlvByRY0YBnLhBs+SxX6caO5gOcgbsHtW68VZjOyuZrISfQKenYx5lxVt+MM66
         pK+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=EI2WiKDnMvTgzKsocwWgUx8X2fPEek1/73LVoKBWIiI=;
        b=LEg/T8LWBU4U3c4UcPgGR04Th/JOq9rsp4+IxG3qtxBjFmphygUHsn7q3qCdHzqcwx
         Ccz3X0MsMNCtV6qw4IekLbqxmmmh86XcdrE2PiovSMT0HN5Tmse+GeBjiK4Abhn2ta1T
         JdsCPjr4v1OQei1eWCrO38d5OAHFCg3/CzKYRQyDqDEqvVuRug/QpqC58ycdtUTvlVkH
         yDSQEb14l5+3LlVC2QGYWaJNnyPvEiGmrshUcS1G5Rzb9YKGLI4TcSwZXi15D6m5kszs
         0oEGsRkNOQrvGFNS43YEjxyZVAaBpb1GKXw2etVITMzpCzBDeZvyO99d/EihwA4+eumt
         Jrww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.144 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0144.hostedemail.com. [216.40.44.144])
        by gmr-mx.google.com with ESMTPS id v12si575556plz.3.2020.08.15.14.31.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 14:31:40 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.144 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.144;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 56CA3182CED28;
	Sat, 15 Aug 2020 21:31:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:368:369:379:599:800:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1605:1711:1730:1747:1777:1792:1981:2194:2199:2393:2525:2553:2561:2564:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6117:6119:6691:6742:7875:7903:9025:10004:10400:10848:11232:11658:11914:12043:12296:12297:12555:12663:12698:12737:12740:12760:12895:13160:13229:13439:14093:14096:14097:14157:14181:14659:14721:21080:21324:21524:21627:21990:30054:30070:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: verse54_5301f6f27008
X-Filterd-Recvd-Size: 4558
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Sat, 15 Aug 2020 21:31:36 +0000 (UTC)
Message-ID: <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton
 <akpm@linux-foundation.org>,  =?ISO-8859-1?Q?D=E1vid_Bolvansk=FD?=
 <david.bolvansky@gmail.com>, Eli Friedman <efriedma@quicinc.com>, "# 3.4.x"
 <stable@vger.kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, Sami
 Tolvanen <samitolvanen@google.com>, Vishal Verma
 <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, "Joel Fernandes (Google)"
 <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar
 <mingo@kernel.org>, Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,  Rasmus Villemoes
 <linux@rasmusvillemoes.dk>
Date: Sat, 15 Aug 2020 14:31:35 -0700
In-Reply-To: <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
	 <20200815020946.1538085-1-ndesaulniers@google.com>
	 <202008150921.B70721A359@keescook>
	 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
	 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
	 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.144 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-08-15 at 14:28 -0700, Nick Desaulniers wrote:
> On Sat, Aug 15, 2020 at 2:24 PM Joe Perches <joe@perches.com> wrote:
> > On Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
> > > On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
> > > > On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> > > > > LLVM implemented a recent "libcall optimization" that lowers calls to
> > > > > `sprintf(dest, "%s", str)` where the return value is used to
> > > > > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> > > > > in parsing format strings.  Calling `sprintf` with overlapping arguments
> > > > > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> > > > > 
> > > > > `stpcpy` is just like `strcpy` except it returns the pointer to the new
> > > > > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> > > > > one statement.
> > > > 
> > > > O_O What?
> > > > 
> > > > No; this is a _terrible_ API: there is no bounds checking, there are no
> > > > buffer sizes. Anything using the example sprintf() pattern is _already_
> > > > wrong and must be removed from the kernel. (Yes, I realize that the
> > > > kernel is *filled* with this bad assumption that "I'll never write more
> > > > than PAGE_SIZE bytes to this buffer", but that's both theoretically
> > > > wrong ("640k is enough for anybody") and has been known to be wrong in
> > > > practice too (e.g. when suddenly your writing routine is reachable by
> > > > splice(2) and you may not have a PAGE_SIZE buffer).
> > > > 
> > > > But we cannot _add_ another dangerous string API. We're already in a
> > > > terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
> > > > needs to be addressed up by removing the unbounded sprintf() uses. (And
> > > > to do so without introducing bugs related to using snprintf() when
> > > > scnprintf() is expected[4].)
> > > 
> > > Well, everything (-next, mainline, stable) is broken right now (with
> > > ToT Clang) without providing this symbol.  I'm not going to go clean
> > > the entire kernel's use of sprintf to get our CI back to being green.
> > 
> > Maybe this should get place in compiler-clang.h so it isn't
> > generic and public.
> 
> https://bugs.llvm.org/show_bug.cgi?id=47162#c7 and
> https://bugs.llvm.org/show_bug.cgi?id=47144
> Seem to imply that Clang is not the only compiler that can lower a
> sequence of libcalls to stpcpy.  Do we want to wait until we have a
> fire drill w/ GCC to move such an implementation from
> include/linux/compiler-clang.h back in to lib/string.c?

My guess is yes, wait until gcc, if ever, needs it.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel%40perches.com.
