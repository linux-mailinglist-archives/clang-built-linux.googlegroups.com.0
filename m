Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBGNS3XVQKGQEYWN2LHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E1CAE513
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 10:04:43 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id f6sf4121324oti.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 01:04:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568102682; cv=pass;
        d=google.com; s=arc-20160816;
        b=N9Gxxt+5J2oblp6NMGwa6yZqimFzXbBy6rflfLUCAy53pJp+QUfv8lyU+WE8h304+M
         77sWIUpAt8dA+bj24LGbOGbXB3EGca35v8E81garJwblmlfC82MRATMY8283ksgMmRz4
         fI4gFVCAJbihAD+izSM9+nTiyAdLvy1u9CS5U/WrGBqnIgakmzzLlHKkl9V72fXxtxNX
         +5a/IU9OTVHv0Z/aYxp9OAnzx5q3uoxzn2adfLjU1jHVptr9qEhVkZIhVt7M7KI3Je93
         uRy24w0Vs4B1QGZfzFv+QywZuPPMhIaKPBBPSbPBMrOGQKJZcNwcrhfG7K5uCvK1YpOR
         Qi/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sQqgFXahxDFuIKgysjLJBbPF4eQ8quceqN8fv7u8igI=;
        b=BeUXVtm/Aj0PrnuZDwigNZAvQbIb8onCSF9CyNc9yjD6CDVxRPqUr7uQ9U51Vy7xIW
         jVRpw33Y8RZz3tdRxcBjZIVjJjmsASGmSGXM3sF7TksPsf3TBxzJbVicLipD1cN7i1rO
         QzpHReYtbDNush3G2JhAff17qcxSdbBqAPLrz6RwmbXuJLnxwvIB6oeeKk0d8Rm5UNjU
         jbf1U5JdszJ4h8PnVO2hk4KC/aVsFcQ3rjCx4pHy718CeEmpiG9AXQTab5wLLRsEV3NY
         l3v4wYD+t5A98eOeDt4OK6loi/ohLxEk2OgsbufR5bVoOZxHBehjtAjg9bNxP1Yd1OeC
         tR8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQqgFXahxDFuIKgysjLJBbPF4eQ8quceqN8fv7u8igI=;
        b=tElUUhICAKCsScpU3jVpihZJpySRwMwH5qb78BTX/AgiFo+8JDw8mzcNFyr2/q6dfh
         6moalqiAibfLZ9zxMmdRROqEWrESx2RjYXWi9Y/GAYt93Qn3RryYlz90EKu/tGIRtZ2Q
         GMW6zD4vsRcXibFPuvPtQ0DP4nvv/QBnn//Qj881Zytv/DYqPsL0kLlaF0AXFUN7xGlc
         hZW15KzYbQJb+hfeTb5onQx54/mL3on46aQqXbUTNXENJCYYpzYY5TNRrw6Az15e5uJd
         YuTIxf2BYG8P23X7SvpziZO92Y+RqS9vIZtZmCwSsA5evQEckls1I5JuaHQH3FZzFCNt
         /AzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQqgFXahxDFuIKgysjLJBbPF4eQ8quceqN8fv7u8igI=;
        b=eCnGwhaLCCXbeHp0G252jp+Aw6z0yAsERSglPeb9GmlfiBV8cFI05QjVdu6U43LfgZ
         kMx9D5CURCKBfo0DAKPLJDcah1nzvnwkPQN/lxVIirfhWdAn1yInbgxbO7gZSdu638iT
         ex74LXyUZxFy7/9lzZOGi4d8sabmQcZ4FCpIqh2le8XII6NdmwGw1/mP4yOjuiDkUZoC
         wIF3NkgSV1ZUxbceLwC8y4NG9QKf84p1MVcFufd5UtJ00NGs2D6kRv59qQ4lUBpUn/e8
         fNTZ0D2Wo4oajkJILQLCDJtQ8F7RMmT6zcVrK691LIIQA2kzwvcMpnfeQNpA8E6kKVf+
         M/yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgklcEChKH2xj0VaX2twbddvs9yq/TT4ZthbVvsKJ9rrVQs5ZM
	Nh46yEcmdTn+MaBrEOhqmHs=
X-Google-Smtp-Source: APXvYqzpZWGIC6Ba5eEbvercr9lT6ClFokjIKcf3knAghczVrKCEL56AZwXKoaS6cO54knL7vufHjQ==
X-Received: by 2002:a9d:744c:: with SMTP id p12mr18205302otk.198.1568102682322;
        Tue, 10 Sep 2019 01:04:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls3618107otp.12.gmail; Tue,
 10 Sep 2019 01:04:41 -0700 (PDT)
X-Received: by 2002:a9d:30c2:: with SMTP id r2mr25213719otg.186.1568102681456;
        Tue, 10 Sep 2019 01:04:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568102681; cv=none;
        d=google.com; s=arc-20160816;
        b=uViIpUnLzpPqt+CmN498pJgFz0mb/YixPyhZTDpSGs+OiPW+qHFlydk9R3Omarqh/e
         KvvAZVBESeIcuyHxEvrNSdM40DTOzzca2Wzl4gHq1+JtU5xvfMLQ+FAZ2dJCcPuKHpQC
         gud5o5jWzsSTHEKTbZvDDNtH+/8Kr4PCa/xc3KGdOUs7SJ+D3+h/+dr1BTaXK8RqFaLv
         CkP+RyDW5sGrM16dXgTlnJyIms+9PeyH9ruK5MAwCBhOQPF4Nla6vKZ79lztrUuDqfpL
         /BFHDeS127vJhy7EQug+F0XKo6DLG3mWgZ0f2wEyg1DIDGEFWVtb7pfFI/8LMfzinpp/
         yX+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=GzXrmlpC/CWlmBBx+Mfgp2MIVT6wc9VgoKmM//l5WEM=;
        b=adPfJ7rWQQUXEvPQAlAW8PR02jsRLuPdhOkRGX2KbLe8jhfsT7vX37Ea5qFgE37tfp
         gVvcS4fud18n4v6wGE4DJQzLz0KtW+ub/A14YxgWXl9gTkBeDro5cPAe6M4VUXTIlMGo
         5Gh5+nXPVcdy/32sas87MxOKcZdmEtCbnuE8vb+m/MYhC01lCMd7r6qcpfzWCjQ7QGkx
         DnSV1zl0ken4Fm4DJTCO6oWGnIfeA4V4hhTNEgdHwnVKTKmZkNwydtMcv/BsNw7RmGp4
         7A5jB0oYs2MLPVt9jdVi99zfKK2gqFS8WU5yzh+AaYbxxH+mzvqTvLKBdh6fhbReieuA
         HDbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id p20si800699oip.5.2019.09.10.01.04.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 01:04:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id q203so16084074qke.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 01:04:41 -0700 (PDT)
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr7346717qkg.3.1568102680809;
 Tue, 10 Sep 2019 01:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de> <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
In-Reply-To: <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Sep 2019 10:04:24 +0200
Message-ID: <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Andrew Murray <andrew.murray@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Sep 10, 2019 at 9:46 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
>
> Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
> assignment of local 'register' variables on GCC, perhaps we should just
> disable that option for arm64 (at least) since we don't have any toolchains
> that seem to like it very much! I'd certainly prefer that over playing
> whack-a-mole with __always_inline.

Right, but I can also see good reasons to keep going:

- In theory, CONFIG_OPTIMIZE_INLINING is the right thing to do -- the compilers
  also make some particularly bad decisions around inlining when each inline
  turns into an __always_inline, as has been the case in Linux for a long time.
  I think in most cases, we get better object code with CONFIG_OPTIMIZE_INLINING
  and in the cases where this is worse, it may be better to fix the compiler.
  The new "asm_inline"  macro should also help with that.

- The x86 folks have apparently whacked most of the moles already, see this
  commit from 2008

   commit 3f9b5cc018566ad9562df0648395649aebdbc5e0
   Author: Ingo Molnar <mingo@elte.hu>
   Date:   Fri Jul 18 16:30:05 2008 +0200

    x86: re-enable OPTIMIZE_INLINING

    re-enable OPTIMIZE_INLINING more widely. Jeff Dike fixed the remaining
    outstanding issue in this commit:

    | commit 4f81c5350b44bcc501ab6f8a089b16d064b4d2f6
    | Author: Jeff Dike <jdike@addtoit.com>
    | Date:   Mon Jul 7 13:36:56 2008 -0400
    |
    |     [UML] fix gcc ICEs and unresolved externs
    [...]
    |    This patch reintroduces unit-at-a-time for gcc >= 4.0,
bringing back the
    |    possibility of Uli's crash.  If that happens, we'll debug it.

    it's still default-off and thus opt-in.

- The inlining decisions of gcc and clang are already very different, and
   the bugs we are finding around that are much more common than
   the difference between CONFIG_OPTIMIZE_INLINING=y/n on a
   given compiler.

             Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw%40mail.gmail.com.
