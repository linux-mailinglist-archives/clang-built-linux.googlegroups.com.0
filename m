Return-Path: <clang-built-linux+bncBCUY5FXDWACRBX6I476AKGQE5PTPA6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A392729D2D4
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 22:36:32 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id t38sf469569pfg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 14:36:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603920991; cv=pass;
        d=google.com; s=arc-20160816;
        b=xStTmb2lkYcrX1XZjj7X9TJlp/gqOEsZPQ3goMOgqkXzq66h3473mymWoZnsiJYgMG
         hJu1tboEqRGM0oRuLotgVVji9xrgQRL/Clp8YqqMPI3u8KcOjkwlrn5PwKnYA9UrNZq1
         DbjowErU4xEslFe5+yQPXGfuL+bxncqiLJLV2WTng4LGBUnQ7H40GwJ+96aHSardtBUz
         FXsp3i9dUdddr4Mg5XID2ElvVBOc81UO912fQv69/G2939ebS5jC+KxMB/aNkEIZh1b9
         ADom4px/Z3jxKSAwksKXgJit37LHcP7CoZh3b1FbDeF2K7VwH7xbLAur7ZwbYuB6VrKF
         qOfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=jiBzcraWkeNSG/5zbUz6e3124CUgsBVzwaMdVzu+iLo=;
        b=I2PEhIRFL6q3oeLc4orJKpt/WEG61WuiDxKTATkvi3RzLyYiDLjNWFDpp0m5+ADroU
         0YzgpC2gXa6dZ0hEKg24WrqxdSAUNS0Fj2YWdRSW0+6jhbFQEsJfUVJdVIrHwa1T9CsW
         5RJ7yIeOmutec5yZl569TlWI76j94gY+PAAxtic8/8Ev5Np7ySGTMta3yAUeE0NphiKT
         VJAg+59isqcCubAM5xwV79B9t2IiNJdYhInYdE1+dj9C80vh6JflVwWNbwYo2TNjtVgm
         qYTQ03fRgrFFQKrx7kJ8Oh8+zyJ4lNpHOTQV6hGiGDLmJ4wX0lYrOOXNqNYNb6Pfpg/+
         anQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KmnzLyn6;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jiBzcraWkeNSG/5zbUz6e3124CUgsBVzwaMdVzu+iLo=;
        b=d7PhxxqJn28x3DoGLaT1gAHT7ROxAJZ6WDe2h8+gkaHINjs8US6Hn2hNUqSzMDIrqV
         mVYzvcU+M85SRQviAiNZiov1pArBkAAuaJ232mUy+zghfH+uNO+TqswQxxpB3cgL9Pgp
         9eoSx4YdnCVLuU04PCWLUWqL9a4W91pvBfXvex7Ko1fDG9avmS/BaKjLt9CsHtRN8sa9
         LP1yNhy8YHIXwR0RuQgxUG3cMDoimjE97YQizlYB1ZNuFm8DOXgo6qAS21lpCi7Lcq1P
         rqZIkR2h/K+3ecEZLfWwu5ndaDyJyjFEtlgFw8Rhy0fPXiOyqBVl1z8bnTE5f0foBJys
         M6+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jiBzcraWkeNSG/5zbUz6e3124CUgsBVzwaMdVzu+iLo=;
        b=QwKz7hM83RZsWqKrrU3J4LmTAnzUCBDlIyHiUGJZ/DkLxYQo3sCw2pE3neSyoB3tAq
         0zS/Oq7ZaUd6ascq/tdAKXUmlCi6Oc8STFwwboh3IiOBtnZ8r8gvHBa8bE/0uK4yz/3U
         nMA/11AX08fUCV7kr+1LpSvFnlsF9NnQB958pbIJ9qadWinAeAMeRHscE3VK+Z8OWYmq
         AXykuiu/vFpS915jmaSz3zOzxd6pttnDiCz8YLv/D41IM2Bh0M8m3mERht2C2nTsvvhJ
         j80hUqEWx4kZMmlUypWvAZEVu/Q2gmc7yWca+tN8gk24jiNhtJWBwOlxx06QmQzgFNyT
         B7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jiBzcraWkeNSG/5zbUz6e3124CUgsBVzwaMdVzu+iLo=;
        b=ST2uUzUwOtUxfHudGachjF+p7YDCbDSakTlscvZwldqu5yiBQVNlFIWVOXRCLdPlnS
         oninsioP82hPH22l2ft75qE7JKe6ZQO1booSxtf89MniR0MmPeHpJtQnafxZy7fh1xZK
         P4uj+6n+X6oCRoWZTf1lIXBMt4nQQU7+CEstoyBRjw4vJc1CE23iUhYM5RP+yvEQQB8Y
         NYwMgi6DAIX7+UUDRlOisO7GAJzij3oNSke4s+RBEN9vdjRgaQbaicZTkdsd7nMc5S2i
         0p366r4UvgTZajQNDyJ6wYCzntefkr8R/zTtiBDQ3o0f2ezd7eyD7EiLFwLNY0T+z7nN
         Z6FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ib6GAA7rO+7RDyAcqukxRXBfpqNrh6YUdVF3TjN8OWkP2VN61
	iSQnryVg+SQLGivQZntQ3L8=
X-Google-Smtp-Source: ABdhPJxciGadNdffhf8WZZAOMo6CfgUGjaNb1Bm+cTO67Bk9MRtB6P8NdM9PsBknmxUOd6dfqeNMoQ==
X-Received: by 2002:a62:7657:0:b029:152:4d66:dcb with SMTP id r84-20020a6276570000b02901524d660dcbmr1176495pfc.74.1603920991395;
        Wed, 28 Oct 2020 14:36:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:543:: with SMTP id 64ls236477pff.2.gmail; Wed, 28 Oct
 2020 14:36:30 -0700 (PDT)
X-Received: by 2002:a63:1d12:: with SMTP id d18mr1253100pgd.314.1603920990748;
        Wed, 28 Oct 2020 14:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603920990; cv=none;
        d=google.com; s=arc-20160816;
        b=rAKUje/ZKmE51ODO7Wxh50CZ7OLevGjhRLA5PMNOA7VmIllKb7ckaP7J8Fwz6gavMx
         31Uui9cPP2bKGxioj8TPT4avYMDhS6VCSJJawk3PjJMLg5YfEV53hbJqtWoK6bKalaDH
         Y2OIy18yyV9C+3rnL7faqf7DOFHxu93kTeGEbP90MH+dvgDR1yHbTcbKFTU4O0wliKUZ
         kyEXqbtgfOn7GM4w53pkWwv6RoqNTBUtpAHEb6P9RMftG1t1s8sXbpXOW9DI1NhtGKhT
         /Cqdnk9XUIK3rQIDp1Xb4ZGuWYCE3F3gTZ4wjjR2ikBn/kS95caCy02W3qq657tmGzI8
         Sy/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w1z4WmWcLWyyqsDJon/u9K8bQjOmOpYyTbSE3GXlbcE=;
        b=JOHBTu56uk8DS1JBbkZf0sbt1S9Dx6f9MyYJPIALW7AxrHirzuqLxYmsrQbmwZ3POx
         qvh6rBwNbxiN6Lbjb8SJKMKYWuuQMXrTlVjoogbDHiK++yikWd0077QRyENc5iF0x7WA
         EAP3TH7l1HDpc/lSAEmn8s8c6Rf1swh3Hv2xdquQcsV9LryZEgvzqs1L56dh/fZt3yHO
         ixRa9gZ45yR+B9jrfUwqygrvwBR3M6kwDCkGIWlnlZywJjwFYxEP2dYjaDGskdc+Q/qh
         4br3gfeLWKOvVe9FWlO99Bvifkq0/ZTmjd6FCld7YzVJF8fD9JOl2729bvLzIHrgmjUM
         3OFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KmnzLyn6;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t13si53279ply.2.2020.10.28.14.36.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 14:36:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x13so527005pfa.9
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 14:36:30 -0700 (PDT)
X-Received: by 2002:a17:90b:1043:: with SMTP id gq3mr873181pjb.213.1603920990427;
        Wed, 28 Oct 2020 14:36:30 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::4:1c8])
        by smtp.gmail.com with ESMTPSA id 189sm511557pfw.215.2020.10.28.14.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 14:36:29 -0700 (PDT)
Date: Wed, 28 Oct 2020 14:36:14 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	kernel-toolchains@vger.kernel.org,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Message-ID: <20201028213614.kqk7atvk6fcjely4@ast-mbp.dhcp.thefacebook.com>
References: <20200821194310.3089815-14-keescook@chromium.org>
 <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
 <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KmnzLyn6;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Oct 27, 2020 at 09:15:17PM +0100, Ard Biesheuvel wrote:
> On Tue, 27 Oct 2020 at 21:12, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Oct 27, 2020 at 12:25 PM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > >
> > > Hi Nick,
> > >
> > > CC Josh
> > >
> > > On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > > > <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > > > placement"), which is another red herring.
> > > > > > > >
> > > > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > > > causing the warning.
> > > >
> > > > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > > > missing from someone's KBUILD_CFLAGS.
> > > > But I don't see anything curious in kernel/bpf/Makefile, unless
> > > > cc-disable-warning is somehow broken.
> > >
> > > I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> > > with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
> > >
> > > Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> > > is generated.  Removing the __no_fgcse tag fixes that.
> >
> > That's weird.  I feel pretty strongly that unless we're working around
> > a well understood compiler bug with a comment that links to a
> > submitted bug report, turning off rando compiler optimizations is a
> > terrible hack for which one must proceed straight to jail; do not pass
> > go; do not collect $200.  But maybe I'd feel differently for this case
> > given the context of the change that added it.  (Ard mentions
> > retpolines+orc+objtool; can someone share the relevant SHA if you have
> > it handy so I don't have to go digging?)
> 
> commit 3193c0836f203a91bef96d88c64cccf0be090d9c
> Author: Josh Poimboeuf <jpoimboe@redhat.com>
> Date:   Wed Jul 17 20:36:45 2019 -0500
> 
>     bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()
> 
> has
> 
> Fixes: e55a73251da3 ("bpf: Fix ORC unwinding in non-JIT BPF code")

That commit is broken.
I had this patch in my queue:
-#define __no_fgcse __attribute__((optimize("-fno-gcse")))
+#define __no_fgcse __attribute__((optimize("-fno-gcse,-fno-omit-frame-pointer")))

Sounds like you want to add -fno-asynchronous-unwind-tables to the above list?

> and mentions objtool and CONFIG_RETPOLINE.
> 
> >  (I feel the same about there
> > being an empty asm(); statement in the definition of asm_volatile_goto
> > for compiler-gcc.h).  Might be time to "fix the compiler."
> >
> > (It sounds like Arvind is both in agreement with my sentiment, and has
> > the root cause).
> >
> 
> I agree that the __no_fgcse hack is terrible. Does Clang support the
> following pragmas?
> 
> #pragma GCC push_options
> #pragma GCC optimize ("-fno-gcse")
> #pragma GCC pop_options

That will work too, but optimize("-fno...,-fno..,-fno..") is imo cleaner.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028213614.kqk7atvk6fcjely4%40ast-mbp.dhcp.thefacebook.com.
