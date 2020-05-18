Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIF3RP3AKGQE7EBWUEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8011D87F6
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 21:10:26 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id 12sf8793544pgu.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 12:10:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589829025; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKctN1MrT4Ktn582Jnb+nD0VbyagzWNEQe0dnDJpNMPqCt9XO42I6GyGRk/NQuHmcg
         m4aj7pbZX6QhFWLDNguevdFoYjgxITOA8BdAxRGF9J2SSYyll5j5KEKEdHpWc40eO9sc
         SCZkFpq7ZXY4FN/4yhxZyuqtX9ZbPtZZp0QU3bxZsI4B4VOm9Pvbb/n3RcTKdUZ2QWsZ
         bNn8DgKuMebTKyWY9ik70JNBa9H5A8BaCaaWW7dnx8B22X2dBMmGcMGjRP7bdhw8TRFx
         baJKFZl6R9lwUB938K9786bn1Ib/fxRH5t86nOAJyyvQ2NEZMSr9noIza8D2qnDkRCrk
         o9Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XTKC+51SSLNlEF05+ygu90JAgpN/k+MQ2N5h9NbSOiI=;
        b=0xv1XWmpgQrJVwcW741cthQAGZRCU5vYM0uIWzwXrPC1KaehXFH8uA81Owha03tVCf
         KBDYIdBHUZ0LqRgrUt+7DndlkxqRK+4TnTetavbVGar49r3RmPkROvwSM36OkkoFcn6s
         L448Qctp4Yep/enMJelp1Xtt4J5bAbJKBnW7h9no12zDEE2wT43+Txs7H/mrDMkc6m5q
         vScWOGOynxVBiQZuCP+gIr3pR9LXMJouuVLTQjlzM2rODuAt9vQt0qTb4ahuZlzrZlnJ
         RRcl5CT/27MggUqSK2Q3BbZZ+xrJRnaZ9DA5NkaAc0Z++6w6Tex6VVLr8zaDwL2KEESk
         YGQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cHuezSmh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTKC+51SSLNlEF05+ygu90JAgpN/k+MQ2N5h9NbSOiI=;
        b=XnZvmDdZSKCBuvyjaO56uEwTrxmdbNiXMD+jJjG/m0zHASBUz/GfYC8HooY97SzXsT
         iM0fuJGo6LRvlBOtlfh/9YeeVcPLVkiExCNfn+OyGY77uKt28yAg3d7pQdH9rWQCPnG/
         upoezjjQVXkSgOBoHmTJO5sDZBanSUKUEHRS8/+XxUCq2S8nXDZcu7LnpEm5LciHvSG3
         5lXbMP9Ek/te9Fed8BTD8Htfyrag+uKfK+uhnF6DUNucmuXkOf/qAMin9PdCChSNAhB+
         PsHPfSyWEFlQsfiyCBmrIvPE0uwEL5gJbEdThX3lhEPBBUQG2andPu31bd3BrH4cp9w0
         Frcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTKC+51SSLNlEF05+ygu90JAgpN/k+MQ2N5h9NbSOiI=;
        b=dVV3O91cc0IprKR3WmP0/zRYz5uYa/5dOnemroLaHMdHu1tMkNpmg8eKpRt7eCQgfZ
         VSTW1pjm7tU9UXZWevllxtvW+AZZQbTIeec1P12OY+4hFZB48r0B8qIvLVsM+lic4uM2
         jDUy53eqW3UtzNnuegtDZAXmdE93u0f9enXWGLMh1kXLsclymN3qGxb+HvzMQjccSZbP
         lsRgyd2e23wTNSURqZ46TnCUa+ZYJG7X5zvyO6vBnfpVoBIVKWrLNw0HVIutLPkJT/E0
         xL2OSyz8Eut1522MsqiNAyHBCyNlqHfdOEdELaijWNO/LqlxODIEhOHRs8+jRY6W9Gcs
         OdNQ==
X-Gm-Message-State: AOAM533WLEzXZgOHJyHM7/tYhNzWqUEdfzfZa50orwKOjQi/ooJSeZFg
	y8LIowBpDEcb+dJqN8chTPY=
X-Google-Smtp-Source: ABdhPJz+gPU4NA9cTFFy+mJoWXXT2uWwgtcKb7/mC1cTwwRe9xik2pm6BxYaHfKgPUrTTiwMbP8KnQ==
X-Received: by 2002:a63:5642:: with SMTP id g2mr16523167pgm.211.1589829024984;
        Mon, 18 May 2020 12:10:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c31a:: with SMTP id v26ls3429773pfg.2.gmail; Mon, 18 May
 2020 12:10:24 -0700 (PDT)
X-Received: by 2002:a62:4e88:: with SMTP id c130mr18549100pfb.122.1589829024532;
        Mon, 18 May 2020 12:10:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589829024; cv=none;
        d=google.com; s=arc-20160816;
        b=yumnBgq2S/ox8jQklUsnCoMQwrjdFBabvxQxRSPgsRFyzyFyhS2wPRU4hMJjZCy3oU
         mYsOz8teWUkUfl7sv4HUb4AZdwDGEjQ1UWshiG5M2b+vu9Fz3XdK+dEA1ykXO9E7Ov6M
         WpnDREaPADidnZgDALAXny3QdPZZnX1DyVFco/jb6MarmvvNi9G/7rITH+Lsvq/yo3Vy
         mXzyoPNkNIrONA1vGm/9i9RRSMncHD1orE4TAx47tAADgBIRr2qHCvNeqnGR+WvSDp5m
         l0BMk6wFoW9nYq17nILQRpZhdeXfPZdRZ9EN8srjq0QgW+KolYNJCOZCnyzEkpqwaXzf
         LoIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B9WsWP6dnEY5vCfQiuvwQaqKnNQto5CQpnFS4KzI7DY=;
        b=E20yUQWHVzLBW5ehRWuiHUKy8NJ3+6QjYExH+RbxEeoUfCBKp/mS8zGPfif12joWb4
         0kIqxYK95oFxifgf9pK5E5JMVKisFBA101Abn+ycMmTtEudbdbZL0voRxfw8LpcaMP3Y
         v2BbuG/D0Shrz61qJw7X4KQn2pRdsPNRlrJq+EaeonytXP2OwsYdtaUFxZKx80lVzxz7
         2wd5jeMa9pca+MGn79QxsLJVUfzxBEs735YppHODExL58f5Lk+a8L/bkj1NHv3VPsBdW
         XZ/vK+VJjXzq57BgoK1/mxR7jYYQvANg5KS2pwWmkfKFap4RabM9cwCiPNwG0bKA551h
         2vcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cHuezSmh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s12si293465pfh.5.2020.05.18.12.10.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 12:10:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p21so5272106pgm.13
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 12:10:24 -0700 (PDT)
X-Received: by 2002:a63:4f09:: with SMTP id d9mr3246799pgb.10.1589829023749;
 Mon, 18 May 2020 12:10:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200501084215.242-1-dima@golovin.in> <20200515185051.GC19017@zn.tnic>
 <602331589572661@mail.yandex.ru> <20200517194429.scwhfr4l4bv4h3ux@google.com> <20200517202527.GA2563549@rani.riverdale.lan>
In-Reply-To: <20200517202527.GA2563549@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 May 2020 12:10:11 -0700
Message-ID: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with lld
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@alien8.de>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "x86@kernel.org" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cHuezSmh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Sun, May 17, 2020 at 1:25 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Sun, May 17, 2020 at 12:44:29PM -0700, Fangrui Song wrote:
> > On 2020-05-16, Dmitry Golovin wrote:
> > >15.05.2020, 21:50, "Borislav Petkov" <bp@alien8.de>:
> > >>
> > >> I need more info here about which segment is read-only?
> > >>
> > >> Is this something LLD does by default or what's happening?
> > >>
> > >
> > >Probably should have quoted the original error message:
> > >
> > >    ld.lld: error: can't create dynamic relocation R_386_32 against
> > >    symbol: _bss in readonly segment; recompile object files with -fPIC
> > >    or pass '-Wl,-z,notext' to allow text relocations in the output
> >
> > Do we know where do these R_386_32 come from?
> >
> > When linking in -shared mode, the linker assumes the image is a shared
> > object and has undetermined image base at runtime. An absolute
> > relocation needs a text relocation (a relocation against a readonly
> > segment).
> >
> > When neither -z notext nor -z text is specified, GNU ld is in an
> > indefinite state where it will enable text relocations (DT_TEXTREL
> > DF_TEXTREL) on demand. It is not considered a good practice for
> > userspace applications to do this.
> >
> > Of course the kernel is different....... I know little about the kernel,
> > but if there is a way to make the sections containing R_386_32
> > relocations writable (SHF_WRITE), that will be a better solution to me.
> > In LLD, -z notext is like making every section SHF_WRITE.
>
> The assembly files head_32.S and head_64.S in arch/x86/boot/compressed
> create bogus relocations in .head.text and .text.
>
> This is the source of the common warning when using the bfd linker, for
> eg on 64-bit:
>   LD      arch/x86/boot/compressed/vmlinux
>   ld: arch/x86/boot/compressed/head_64.o: warning: relocation in read-only section `.head.text'
>   ld: warning: creating a DT_TEXTREL in object
>
> These relocations are "bogus", i.e. they're unwanted and the kernel
> won't actually boot if anything were to perform those relocations before
> running it. They're also the cause of the 64-bit kernel requiring linker
> support for the -z noreloc-overflow option to link it as PIE.
>
> From arch/x86/boot/compressed/Makefile:
>
> # To build 64-bit compressed kernel as PIE, we disable relocation
> # overflow check to avoid relocation overflow error with a new linker
> # command-line option, -z noreloc-overflow.
> KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z
> noreloc-overflow" \
>         && echo "-z noreloc-overflow -pie --no-dynamic-linker")
>
> The relocations come from code like
>         leal    gdt(%ebp), %eax
> which should really be
>         leal    (gdt-startup_32)(%ebp), %eax
> to be technically correct.
>
> I've played around with fixing the head code to avoid creating the
> relocations in the first place, but never got around to submitting
> anything: if there is interest in this, I can polish it up and send it
> around.

We'd be happy to help test and review. :)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DqB%2BEoJwfAYUA9Hg7f9op4Q4W%2BTDnht8pLRG5bPX%3D29Q%40mail.gmail.com.
