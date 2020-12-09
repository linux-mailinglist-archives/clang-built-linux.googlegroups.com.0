Return-Path: <clang-built-linux+bncBC2ORX645YPRBIXOYP7AKGQEHMVUBQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1CC2D4670
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 17:11:15 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id j5sf1428588qvu.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 08:11:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607530274; cv=pass;
        d=google.com; s=arc-20160816;
        b=l36VY9bMaoMY/Oc3DYyr2lPT4vDnuKl9j7Gv5WfE+IEwMVFloOlPGh4XHohIoozP3Z
         DIBdSfekzOWDBm0Timvu4ElZWAy/BkUjGwLKMmhAP3Fce4f94qpPBAVadkZr/2H8K+Nx
         64jRQNiYTJNrvymvibfliLFasESCBd+wI0H8kN3LKZFPeNwgeeSpYnmDR4HIOiTKVVJt
         IUrPhLPL6wn5qTB0SqwrEMWwoOd9M/3sa7P8WzXLZNB2sA/rxO5X59P3crFjl9hE/C8j
         Xb0cbRUsNEeUW7WzxPuQ5i6oUe9MQq/vYBuLYNsSbdwcNdt7XuaWKclfcblwkBexOuLp
         Mx4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=w3uMw/X1VpKHZd7fa0PE2H1lEQZnpjzz+LsHKm4PPdY=;
        b=xpTNtL7DZGoVyJ6N2pE7pVh1zkBh7nxKPhpLJ5XiL7HcSbUSs/EHSIC1Mvs4Q9gpCt
         EgBOh8YxbN8v+k3mjnYwYoV6GXfJn6FuXgOCAWvKUk+NbvqjDRFDlKhOHWpaC54t5t8y
         PVLDTyrDvlFStHa8vIXCheJN3t+GWMRlzLR57uK414hKm1k9DFHTmTK7sw9febXic3LM
         E61ivjyk9NXEhZBGQkRHqZBFEGpWOtRglTbI12cspoRW3gO3EiTP/bjD7T8B0GKYZISO
         alOXWOwUPpQid+79tgLtD7dLx5iXa8ly2Y2BQa8zvoLmZSiZylDndY3B8cptCij6AB8g
         TzRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gIACvSNI;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w3uMw/X1VpKHZd7fa0PE2H1lEQZnpjzz+LsHKm4PPdY=;
        b=UKyjlALuf8EVmUw80mJqGR52Nlq5d04TSEHL3YyTmqJ5Elh9ns8fz488lj+t2mRzYI
         /Y0MVpm8ZQVI4Loit+bTHJDxf58QB86a51iUO4aEpaG2ONg8N3O+qEtJ1mFsymko5KXE
         rlZf79MlhtMaBzEm+/3g9qxM70KaEaTSl7NnSDsOy1l++wtVELqk6WMejH0wLPZ1qZTg
         tN17Cdxlgo9sWtJtUooT7sFs82FiNCC1k7G0tPPddIEhTOF7/hPaTC1Yk5wVFza9qF1K
         I/fZ1HTYwNBDBJOAgPrXdTIq+zjwhL/niuSgSWXLSKUEwEGYtNxCN0k4tocUgGJlfJYk
         3PlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w3uMw/X1VpKHZd7fa0PE2H1lEQZnpjzz+LsHKm4PPdY=;
        b=TAzjiFkCpdEZFjm4lbrmI53+nVSb4LpwWnc2KhcnLLp2CQcpz6VYfUM5J/9y5rDomo
         KXtBoCS1vru4G+XmRhKwE3C06sMTIokB9yZQUs1kY2SLGAFyFNtKuKFcZuOqjFIuUCQU
         m7SO8W9g3Zn8Lx+84Vt3vU9J602ViaVri151ATvChJc6EraALht0ylvV06Y78voZ54ZB
         vBXHXhIraqc+eBB2pBR4h7Truzz3d8HwB5+2N5cxog10ySfkKuf1nPzP+YnfZKpQOarG
         CIxoxR5LzT0U3kQHd2lHqytP3Qo/bGIaq/qw/IAEzhNA6x3i0+ByQsYHPM1zh9Tzxc0l
         nSZw==
X-Gm-Message-State: AOAM533a9bBnSl6lCDtsj4YqEjDgtbUAR9tFS2Azk0ANjQ6H4jdHCMt0
	Gs0IG34M16Su2HApFwuX3Mg=
X-Google-Smtp-Source: ABdhPJzSEKKYFcfGezF9iJ3z9W5lFAOCS/3cwsdA+mEms6YW11YDQutwoF6536rNkUS6omUwp99yow==
X-Received: by 2002:ac8:7146:: with SMTP id h6mr3755936qtp.112.1607530274591;
        Wed, 09 Dec 2020 08:11:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3beb:: with SMTP id s40ls800847qte.8.gmail; Wed, 09 Dec
 2020 08:11:14 -0800 (PST)
X-Received: by 2002:a05:622a:1c3:: with SMTP id t3mr3885621qtw.378.1607530274071;
        Wed, 09 Dec 2020 08:11:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607530274; cv=none;
        d=google.com; s=arc-20160816;
        b=tJDjnRBMiavgF6lGTw01wm9OcPT7q2oBleKFCIzJKDpqkK59OOAiz0prlqz6WhJyNJ
         /J/dzVVIm/sdByFqVd9qup0zCppepJeiyPflvuOYh/ACRdckYe6pr/8NOyTmN6PxM/J+
         wyRidHRO+9xA4mnttjZxgBy3jqD2R0dn8cyruVNkIQrHg8dsemJya+eoh/0gGciuzFav
         lSVzY/JWuu9E6GI67vY3VDdvItUJ9BlHccxxpUM8BCktA8Q4xuQSxihmqKxc0pf234io
         nOgZvyo+T9VUkFvu9nqzXUHxj6Gm8q6FISHgSfY4n5iAT8sjFunmpo8CKrJCNnss6Cde
         G++w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RAzf84xm2mgxYvHDSz3COzuojd6IcnSxMMVRpqKMx58=;
        b=doeHQguePOxlGt3kssTsZTu7DzP9a11T3V7NqZfy9Ugcbl5cmlwGTJLFY+OMSPFCWm
         WCx2m3RBNZZ9nF2AAepHU8ns16tw/eGY7OBZefTS8lXZKZy98VMN1zrSXsnOBttvt+Vk
         /PWQE6WfKbw7MlTQnf6g5yMqM06Y7mKs3Bl0sANCV/bZSqqbWe7DO6En3Ve0SgwmPsPe
         qi8Yx19s123UP3v/0HrO3n0iWTlr298pqmoI31vn/+JE59mk2hifK9DX/ygAROGY1sR9
         gu/6YJmTZp6B2u0f237nQP2qGn82UPBthVsE44c0XuwVyCQ5yyuZcKBgr2AzIVlLxtHs
         EGAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gIACvSNI;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id g2si110339qko.5.2020.12.09.08.11.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 08:11:14 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id s42so655854uad.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Dec 2020 08:11:14 -0800 (PST)
X-Received: by 2002:ab0:1c0a:: with SMTP id a10mr2343531uaj.89.1607530273519;
 Wed, 09 Dec 2020 08:11:13 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
 <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com>
 <CAKwvOd=hL=Vt1ATYqky9jmv+tM5hpTnLRuZudG-7ki0EYoFGJQ@mail.gmail.com> <CAK8P3a1k_cq3NOUeuQC4-uKDBaGq49GSjAMSiS_M9AVMBxv51g@mail.gmail.com>
In-Reply-To: <CAK8P3a1k_cq3NOUeuQC4-uKDBaGq49GSjAMSiS_M9AVMBxv51g@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Dec 2020 08:11:02 -0800
Message-ID: <CABCJKucn6HnOw+oonjGU8q7w3uC0H727JZ30LzTbXx9BVLb0Zg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gIACvSNI;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Dec 8, 2020 at 2:20 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 10:10 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Dec 8, 2020 at 1:00 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Tue, Dec 8, 2020 at 5:43 PM 'Sami Tolvanen' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Tue, Dec 8, 2020 at 4:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > > > >
> > > > > - one build seems to take even longer to link. It's currently at 35GB RAM
> > > > >   usage and 40 minutes into the final link, but I'm worried it might
> > > > > not complete
> > > > >   before it runs out of memory.  I only have 128GB installed, and google-chrome
> > > > >   uses another 30GB of that, and I'm also doing some other builds in parallel.
> > > > >   Is there a minimum recommended amount of memory for doing LTO builds?
> > > >
> > > > When building arm64 defconfig, the maximum memory usage I measured
> > > > with ThinLTO was 3.5 GB, and with full LTO 20.3 GB. I haven't measured
> > > > larger configurations, but I believe LLD can easily consume 3-4x that
> > > > much with full LTO allyesconfig.
> > >
> > > Ok, that's not too bad then. Is there actually a reason to still
> > > support full-lto
> > > in your series? As I understand it, full LTO was the initial approach and
> > > used to work better, but thin LTO is actually what we want to use in the
> > > long run. Perhaps dropping the full LTO option from your series now
> > > that thin LTO works well enough and uses less resources would help
> > > avoid some of the problems.
> >
> > While all developers agree that ThinLTO is a much more palatable
> > experience than full LTO; our product teams prefer the excessive build
> > time and memory high water mark (at build time) costs in exchange for
> > slightly better performance than ThinLTO in <benchmarks that I've been
> > told are important>.  Keeping support for full LTO in tree would help
> > our product teams reduce the amount of out of tree code they have.  As
> > long as <benchmarks that I've been told are important> help
> > sell/differentiate phones, I suspect our product teams will continue
> > to ship full LTO in production.
>
> Ok, fair enough. How about marking FULL_LTO as 'depends on
> !COMPILE_TEST' then? I'll do that locally for my randconfig tests,
> but it would help the other build bots that also force-enable
> COMPILE_TEST.

Sure, that sounds reasonable to me. I'll add it in v9.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucn6HnOw%2BoonjGU8q7w3uC0H727JZ30LzTbXx9BVLb0Zg%40mail.gmail.com.
