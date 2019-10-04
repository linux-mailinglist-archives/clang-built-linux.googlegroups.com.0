Return-Path: <clang-built-linux+bncBCQJP74GSUDRBY7N3PWAKGQE2EDKYTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 36004CB51E
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Oct 2019 09:38:13 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id r26sf515654vsq.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Oct 2019 00:38:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570174692; cv=pass;
        d=google.com; s=arc-20160816;
        b=0TUaXL28YOyRoQYTmJ52iU975xLjLZaDKtJvjXHQEGr/GZpb8lcSm1YyPRpg/Mo0eO
         FDT7FHtIR9jjxDwhz0WhEcJjuUJlEYICs3I58869aNY2L2X6m5V71s4Qm5UG6hv6yGKB
         f30S6s2+GDmbKfTm+wBnF3jQuHiDZsm2UyIpz7Z2kUrAOItglhdulihvSzN8lEsjWfNE
         KXKlu9Ad2cc8c71v4aQmFWEtdrg1D6usB47DdRuWI0AvI1j5qgQGnn0WCvxGoKz0tGVo
         qmFJP/LncUsURpCjmkuXD7nOMw4beN8GtwwQwBYjBRDGI6Jt0GoFB4gDgyljSfxLkqtB
         NWgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZVN1AHPrwoJnVHJAsIE6O4XbopMhbVZ2qE2mp7A4v/Q=;
        b=be3nDcjayRILRd9HeK5cXHjaV/0XmLNLMC4Q99PuROS0QpHhYbRzW46M96E4jzeWAu
         pgvHLM3uA5ulhGpRxeoNGnCy+k5SW9xSZE0B+g5eKuf8qx3DnQWFirP2PhSYvCOSwojY
         gu9cBG39Pb7vrJPB3wo2q14Y5zP37Wf9gp1iXZCfBwli0cG3N7TSShYW46MYizEo3TK/
         MTZJQH7vzuaGOsFx96g1PXOq72nVzsMLj1g5ZNqOYC2ceDlxZ8gm2+R2pNAxHqgmcx50
         DbQFzKP4giwpevnguDu1r6WVHh4ebLH8y7MFLi3Q3uVAtLN1comffNJ2e/ilkrW5U605
         Jo0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZVN1AHPrwoJnVHJAsIE6O4XbopMhbVZ2qE2mp7A4v/Q=;
        b=CgRFhG6hhvfmqoPXTHnRlONdLgxqrWQ4XIzAvsBZQPLvPELuculHclc1Yu8/RfpTn8
         zY6sDnkZyX+zNqZ21e4ZCau4HEUHi467UG1+1GNQqByNZlSsYkFHaexziqr59RkyulIW
         pbzz1km1PefOwAfL4TD1ZcEbHLqtQ1IVf0tFdq5ueT65ENi8gr35Su3s1huD98ZBvr94
         q+k1TJM5TlXHDiMfazLu5FWAfXnpLtewkZDqPbQ5EqdiLPv1iPAbp3oB2SwFRRKvRYrq
         +/ZA71XIWvedsCP4mndEr6BkrpOwmgWiSzbtq0IFCg9n5CJSVkDcnKKDVJ1Ao0T2CYnW
         hYoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZVN1AHPrwoJnVHJAsIE6O4XbopMhbVZ2qE2mp7A4v/Q=;
        b=atw2psBiMbNRu1KOZEJvOAPJhPbCvTDS6supFEp0V3q38+np/+N+Y41diS/sI7zdHx
         JeRkUK2vNK755TXUaRcg7Dcw14H5uIl9NvwMllICaaSohfmyHAcX2jyPdq97I26k3R7C
         EOtr086TFVfJIWFlXncNGAfeO9VkP4LAaWR94DvyxcsNqSliFIYJOKqtxqFE3EMiFq0y
         Kg8TUV746JVFLq2giDBBoU7owLg+USw/GkZASerXMg3TxdWlcENgZ797DjJ+ohC8dZkr
         8i9yvhbO7LqoQX+cgKLptuM8pi9cQpo2f/m5SYDR3fKAQ8CXnnX/jT+UquCwuE5+pHrK
         xznw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWzlCq2iVG99AbtenfCiGeMrbxQ5Op9KQKErPG4+y2U2ATpPmwv
	LCJxIY365zMn4GRhdP1cwEY=
X-Google-Smtp-Source: APXvYqzD1uV49q+MrWzdPvXlO8a6qsCGupW+OGCbKOBT4tGh3yrb9iABEt3vF7T9/iFEhcMnea6FOw==
X-Received: by 2002:ac5:c7bb:: with SMTP id d27mr7133627vkn.19.1570174692070;
        Fri, 04 Oct 2019 00:38:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7214:: with SMTP id u20ls508911uao.2.gmail; Fri, 04 Oct
 2019 00:38:11 -0700 (PDT)
X-Received: by 2002:ab0:5e50:: with SMTP id a16mr2853230uah.24.1570174691550;
        Fri, 04 Oct 2019 00:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570174691; cv=none;
        d=google.com; s=arc-20160816;
        b=t6Z/bl4QfrFfHo87vy48HogiT1UVWTYeXlwGejPlHjra4v0Q8gfr5qkXaPofrhlJ6k
         h2utqqPRFaw99AjWJB2o9GPky26GHTI7e0eds1e56pOgDoGg1gY6sUnmTTimTDfUdFMf
         jz7G71AQaMiprnQHdUvZIFP4tsXxsmnnAwB2/7GOpFiz57noStLxto0wiTv93ZI4+wpZ
         EEnK8vEU30QxUpYIKavtxmAtXvQ6GUbiPnEXZokXoG8zL59vG5/tJiyPspSXf/qz5rqj
         CK7Zy06LuSJtHpNKSu751cMXvxDPTOcBnxpdX7N8fJzEd/VmzJKg0NWpefwV77qi86YM
         6wMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=wuBYLzr0+BbgtiiM2Gze6MIPys+898SIQq1AttIPKCY=;
        b=h0ArZB0sypDUGxBGrT0qbvqvVdikmO0KrHzKHv7z1NEkcAhSacWkWhvKTqu+NWH+u3
         yoGTNdEGi7VIN66Emp5b1Yq5SQGU5P3k0I9+r2qsC9tY88fWzBVqqTiaFvwZq+UKHlih
         zYCcKKL8bH538Gajq558xiBh4bK2SLOvvXJSeSnrBwWYAKHPoSLyOSVSiMAdVx7GLU+A
         eorSmUlR0of90o8ViT0TOYBgC2+li3txUsUjY6bON8bTjJToZKPZKGag+zEqhi/pS2I8
         lOffL/Qk/77JSHv1L6WOoSoUNHRXTvwRuX5fWWK9wbStKyCxYuFyjAQkN8IIwscV/iDZ
         YoQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com. [209.85.167.195])
        by gmr-mx.google.com with ESMTPS id v4si6669vka.3.2019.10.04.00.38.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 00:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195 as permitted sender) client-ip=209.85.167.195;
Received: by mail-oi1-f195.google.com with SMTP id x3so4992623oig.2
        for <clang-built-linux@googlegroups.com>; Fri, 04 Oct 2019 00:38:11 -0700 (PDT)
X-Received: by 2002:aca:b654:: with SMTP id g81mr5758145oif.153.1570174690802;
 Fri, 04 Oct 2019 00:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
 <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
 <CAK7LNATSoOD0g=Aarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw@mail.gmail.com>
 <CAHk-=wj9Dbom1x7qDfrXgNbjdFa_84bAUMdGigs4sELQQW28wg@mail.gmail.com> <CANiq72k39jKJVDkQVk=OP8zdYEAiLMadnSxDYLFY1gwpKmuo_Q@mail.gmail.com>
In-Reply-To: <CANiq72k39jKJVDkQVk=OP8zdYEAiLMadnSxDYLFY1gwpKmuo_Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 4 Oct 2019 09:37:59 +0200
Message-ID: <CAMuHMdWbv34O6=kR_3UOxvZ4WBmzaPmbGpux+gZCaQo+XLs58A@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.195
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Miguel,

On Thu, Oct 3, 2019 at 10:21 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
> On Thu, Oct 3, 2019 at 7:29 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> > On Thu, Oct 3, 2019 at 10:24 AM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> > >
> > > I just want to annotate __always_inline for the case
> > > "2. code that if not inlined is somehow not correct."
> >
> > Oh, I support that entirely - if only for documentation.
> >
> > But I do *not* support the dismissal of the architecture maintainers
> > concerns about "does it work?" and apparently known compiler bugs.
> >
> > > Again, not saying "use a macro".
> >
> > Other people did, though.
> >
> > And there seemed to be little balancing of the pain vs the gain. The
> > gain really isn't that obvious. If the code shrinks by a couple of kB,
> > is that good or bad? Maybe it is smaller, but is it _better_?
>
> I think both positions that people have shown are important to take
> into account.
>
> We should minimize our usage of macros wherever possible and certainly
> not write new ones when another solution is available. But we should
> *also* minimize our dependence on code that "must-be-inlined" to work
> as much as possible.
>
> In particular, I think we should allow to use __always_inline only if
> it doesn't work otherwise, as an alternative before trying the next
> worst solution (macros). And avoid using only "inline" when we
> actually require inlining, of course.
>
> And the reasoning for each usage of __always_inline should have a
> comment (be it "bad codegen", "performance tanks without it",
> "compiler X <= 4.2 refuses to compile"...). Which is also useful for
> compiler folks to grep for cases to improve/fix in their compiler!

First, we had "inline" and normal functions, where "inline" was used to
make sure a function was inlined (e.g. because it contained code paths
that were intended to be optimized away[*]).
Then, the compiler started not honoring the "inline" keyword, so we got
"always_inline", "inline", and normal functions.  With a hack to #define
"inline" to "always_inline" for some compiler versions.

What's next? There should be a way for the programmer to indicate a
function must be inlined.

[*] Some unused  code paths may contain references to symbols that may
    not exist for the current configuration, or not exist at all.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdWbv34O6%3DkR_3UOxvZ4WBmzaPmbGpux%2BgZCaQo%2BXLs58A%40mail.gmail.com.
