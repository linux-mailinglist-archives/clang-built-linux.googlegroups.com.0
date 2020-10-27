Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUEJ4L6AKGQEO65UFRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1DF29CA45
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:36:33 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id u5sf868467otb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:36:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603830992; cv=pass;
        d=google.com; s=arc-20160816;
        b=zvPFVSE8zLkQvqK4Y1N5M/m6CBh8u8lThIkVIqZbQuVNqv1Lo01pGS/w3TJB+easil
         rNq+hbwzdgNfbx/uz6bfgpeuQpF/wTNa0SC4pjSYT9oTP59I41KLABf6YIGEkfAk8gb+
         TVIWT8KPpQImk5xHXj0shYNiylvOfLUlhXmGrhSUAneIpEPyNwuE14dkeSryjXscNVdY
         Q2LPXHhrffpZmZkDGruUJIn6VHDXYKb2stAZCUjtaVKMYW7C3sRMCGTGiP4+8PIdBxaU
         V+9wFLAx4jXfdYuPCGg5dxSg0YJ4XOJSoUuEMnsuWPTUrzkH5egIhTqa0P2zVWA1XIio
         XvOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=obWJYla5yIZnB6+C7RVgIS3MjELTUqmizrA95kgPsNY=;
        b=gZrDYHOOCavkjkPKUaOKti7tILOCMMlVLIYSM94Xq3OaJuNfCuKKDbMdjeGpVgQ+7t
         BKP0H5xjekUQG6dUksjOcct4i17FW4Dr7anJNQMJ/28rGYe3cpF0T70ve+ZqfqZZTBYC
         mR8I5xMXn0LEyvC33mayXAltKLOlqn0NC5Q5eZXBIrGK+r3tveefyPIKsmjhm6lxbXo8
         BdzlqLuDzhDq3oQoUIhwiGeZmTuE0YRCy362VFLdVPS0Hoh6+6ZG4LAGYmCm5nPaLoDr
         YpQ/7HHSjcEtzGO7vrWD6wkBF5aUqpvrxCWCOXKCWVPHHKtYsbqKCjS3P7mkkBbCNcg7
         eAQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="La6FRGr/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obWJYla5yIZnB6+C7RVgIS3MjELTUqmizrA95kgPsNY=;
        b=M7CSKVRehpABPgeLl8V8h8Tq+JIpvc85X6Ya1jZAUG9sGaIAwzQR/0VagNEP6x+mLS
         YUGQoW9znegncd+k+GeYITJEw9AVRIN5nJQYhpHIGl+H3gIN6dHhuUou6WUMuAap9/MP
         BF8XGBpX0DccN1v0cSJcpDhAoJgAUlBo/vpm9FDeK01dmbw/nQmLF40HFs+nl8oJQQe0
         nCValtJw8NHswoMTkZk2BT1Qmy1XcXkkDQMdHaqeHxTI/O94PmHHUym1a95Z8fQWVWYv
         2pz4v1Hu7gJkH+5zUiDNYF94Jz1TAeKWudaezurb22aaltiBTVxnoXeY2EsrGS6wuWOk
         3gAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obWJYla5yIZnB6+C7RVgIS3MjELTUqmizrA95kgPsNY=;
        b=Bf8TBb0i2y2Ibh+9+q8ng0tte69SN3G5SVt1ham8w8KT8WPEt54fTQ9jwbEfd6cOZa
         dunlebaamfdYEKc6y1H0H12q+vUeE0M/72LtXu7Da5xrxJtaRg0VH8C5+TOAw99gnI/Y
         2jD9Eg6OyAhQ8hfTm5GjEsXbIk56aYzPwPJ+0UOsUG/1JbReNHNRlKY14b2IWZPSB+9e
         gGWi6PjhZxL4bWXCO5XHQSrO0gZYWFhRqysgJ2oXI1dFzQz8r/rxfrDinxJjab9f3ecZ
         SMX5dPRlFhAMJ3Z1G19F0NavLV/dZKJ3jtCa9lhJ5GXF4NDE0U4l2UpbSDWKs69YCI84
         e9Zg==
X-Gm-Message-State: AOAM532bG2vHxFImLD3GFmJQ9TigyEx5bind2HM+gXDZPlOcBHCz+3EU
	MnAGuykkelwUlpadID2E13g=
X-Google-Smtp-Source: ABdhPJz7MEf9QGbLIlN22kxW4uRh3Ri7DZlrRE21IQQdz0H8RhDubjzRCEMXvIwmPQTFXRFQ89ReTA==
X-Received: by 2002:a9d:4e8f:: with SMTP id v15mr2651619otk.121.1603830992306;
        Tue, 27 Oct 2020 13:36:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c694:: with SMTP id m20ls209289ooq.8.gmail; Tue, 27 Oct
 2020 13:36:32 -0700 (PDT)
X-Received: by 2002:a4a:45cf:: with SMTP id y198mr3220057ooa.20.1603830991980;
        Tue, 27 Oct 2020 13:36:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603830991; cv=none;
        d=google.com; s=arc-20160816;
        b=eL4rHN6vczhOzj/GM2hgA4whPh4EENDCIoZhU5erQZCb3xPyVZ57fcZM8dzU/Egw4L
         ULDkw1eFerUOkP6mzo2eOQL7TLiZB2nrGhjdIQAGvBZi/8eaIR2Jd95WZDoISZbKo6m2
         RXM3Lrv+DBfCB6U5XdY9BJi0OoRT+4TJysQ4W66Sv0nulZgKx/klEFcS9x1dgnKYaGqy
         zyeRH298gaND4QaFew7au3a+/naX9MkOs+Wyv0FVlHVrr5s6oW6ey9RuWHs8lnRCXXYy
         q4fUgNBqR++qrM4f2eyiA2DbVqKYV2W6qE5j4ViXxqO/cUApRmJ+ry43fKwXIQEQFwDo
         yD2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=33VjU+F7xAlvSJckVmNE4QUId8MWatGSN2KXkENeBPE=;
        b=FlDhgc+dBIe/vk5ISnBQTMmeb04FRMt+b6u4xQYgmsslLlPCObMHNJDxNaUmpsmZQf
         z9xAbJSy/7F4YhHT6qYvqC9pgu1RPQZRb0M75usCin4TIDr/kr9vYX4IgSPOVuc+29fV
         QdO6L9pJDJ/bqasc4Mkk9p9iIRY6rwMmk2QmakDjLPWLisult19l1fjy1/OAhRv92/Av
         7NeLlU6pTy1VhFdXs+tXc+nPinMhlsJWE4SmkwFykxt4bQWn/79QuscRAoJ4hLEAmCcZ
         xqzrtr99bDSukmQo7tVV5uRBmTMeuAfO/sLhxK/KLb3OQGjAtwHrc/MuQ6+iE+dfWaQS
         cPXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="La6FRGr/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d20si324390oti.1.2020.10.27.13.36.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:36:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id f21so1385311plr.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:36:31 -0700 (PDT)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr3652441pjj.101.1603830991134;
 Tue, 27 Oct 2020 13:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
 <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
 <CAKwvOdm9kuKoVnQoVo7T91gRb9QiCTp2G_PnwbdPM=o710Lx5A@mail.gmail.com> <20201027203210.GB1833548@rani.riverdale.lan>
In-Reply-To: <20201027203210.GB1833548@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 13:36:20 -0700
Message-ID: <CAKwvOd=ufk3G8moNb8Z1Ruw9hm1YkynZ5mQNf2k1FsmkXfCJiw@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "the arch/x86 maintainers" <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="La6FRGr/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, Oct 27, 2020 at 1:32 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Oct 27, 2020 at 01:28:02PM -0700, Nick Desaulniers wrote:
> > > commit 3193c0836f203a91bef96d88c64cccf0be090d9c
> > > Author: Josh Poimboeuf <jpoimboe@redhat.com>
> > > Date:   Wed Jul 17 20:36:45 2019 -0500
> > >
> > >     bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()
> > >
> > > has
> > >
> > > Fixes: e55a73251da3 ("bpf: Fix ORC unwinding in non-JIT BPF code")
> > >
> > > and mentions objtool and CONFIG_RETPOLINE.
> >
> > Thanks for the context.  It might be time to revisit the above commit.
> > If I revert it (small conflict that's easy to fixup),
> > kernel/bpf/core.o builds cleanly with defconfig+GCC-9.3, so maybe
> > obtool did get smart enough to handle that case?  Probably regresses
> > the performance of that main dispatch loop for BPF, but not sure what
> > folks are expecting when retpolines are enabled.
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> The objtool issue was with RETPOLINE disabled.

Ah, sorry, in that case default-CONFIG_RETPOLINE+gcc-9.3:
kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0x8d4: sibling
call from callable instruction with modified stack frame
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dufk3G8moNb8Z1Ruw9hm1YkynZ5mQNf2k1FsmkXfCJiw%40mail.gmail.com.
