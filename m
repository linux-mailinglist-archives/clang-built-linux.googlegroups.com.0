Return-Path: <clang-built-linux+bncBCS7XUWOUULBBW6X6CCQMGQEZ34GRZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E6939CC25
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 03:58:52 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id b19-20020a05620a0893b02902e956b29f5dsf9797125qka.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 18:58:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622944731; cv=pass;
        d=google.com; s=arc-20160816;
        b=mmuchl/H0h9Ez6lY/OJ6LbdAQIXxOpSU4IyFFs1VSCcg9GsSt+Xdskn3DneEzHeBn0
         6GRHxXg/BKQEd7Fr6sxL+51PuEbdx+aThOeacyAmcRAaGbWNSGTyZP+x3OrOx60KomTo
         s+Lg4c2JSV326McWLpnKBKKuaQYiTfSMB7ZYqZpAVUUHF8JPRGBPjwEFOENsp8sHhGkK
         QbZyMMxY3thzoPNv14WbLH1QYRJTni1/yrfQRj6dHgt78TDyVW3ehaH+ZRURI6XLHqaK
         VgAE6COIb+3avmJKAgcH6/uWGBzdDJh6jTsGMG/r8gxZkCLxAeP9JRGb9Tor+i30s4+n
         flmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qujPBxh5YbTp0xGc98y1oYAdFM19e3XELOxMd/yVXnE=;
        b=oFakaSShHqAFjhH1+4hT8d+SwsPg2QjUQGdmvn2YzdULKUh+Abyn8/50VLTw4RJrYs
         aczaq7krdll3h7/y8qlU7tp2vrGuM/mMj9Vqr9TsNRb+E2mYMCp6LXRYehhXd2bwURAx
         XznDk/TkXnuVP9JmzzE8rct/61yBskuUUafLlSODapUMsT6rNvOx1IP04OdQRMiRc1Ni
         KaMey+FbBvo+OkXblF795MUvplwQiVkRScJjNfD7P6pX/pHuSTEnFqlUGWgZviokplgA
         uiHUzP+wZSYj8ev3g1znMXICYyabM7JqvEZIxpl3+In8ymz5U4jsg02rk7Z1bc0Eyjs4
         EXQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k5QllBMp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qujPBxh5YbTp0xGc98y1oYAdFM19e3XELOxMd/yVXnE=;
        b=nY86ExbW1cxI7xjeggWkKvMbktrdXnajyOw71kXuAZFdiAGo9nPdY/m+a2dTZ6Hg9X
         DniW4sUjhL7Fsl78JoI8Gac9NDxt60wLHr8xcQ4pfioIbuDlVs0olJrvs6rqGWWa/d75
         O7LXrPlio0sv0391DbW0QoEAZDJGsoSjC2+HWhM1IwSFYd89ZtoRbLQbTiFn2YjmE6rH
         V+ojO31KS3Gv4NfUGrb2DGsQsrmUYlCR3fjCgYQ7K0lDrnNZKrj+mVaLr7t7kz965F9k
         M9u+m4bA40kOQhlf/eJ8M1Lr+Zuy5n0KZwZK6Q9tqcMibqoIahp/wkY4qu5CA/Cdi73c
         tRQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qujPBxh5YbTp0xGc98y1oYAdFM19e3XELOxMd/yVXnE=;
        b=BaYWMvO0XGF2d0qCPiOIfNUgO7gNTUbahh2/mNTm2A3C4I3KpMdEr2TIx6LFXlwSOE
         ir71UglWLlqEVY8dS8QHFXcBRQ0FTR0kJHKkVHEOSebzwHqJFZoGq0hKhwH50wQtdv/y
         8UMxQ4MeSzfqYjB8ao/Prn1BFCSr9myIB3INsFIuAzlzAzhJUk4xJaNtXRmSKFfbEUSs
         CvmrMjUKNaOeebsbTqBZqLMaP8xKvih9dlbmP16kYRD7iiG0qRQRyqakGNmFLFbK8kJV
         ubOzwMHSQnZKERPHMcGr6YRYlikqvrugp7clIDIOm+QE40KUiJFpI+SG7kiR29LQlLkn
         6rEQ==
X-Gm-Message-State: AOAM532Ykok5N2YLa1ll+m9aA784pch9V1rdXK1jLqACkJux05qNnVxm
	RwX5u2FUZtRSnd6udmRKcow=
X-Google-Smtp-Source: ABdhPJx8LsgQ6pEMJoxOzbcnIw9w9i1oqZo38kfFovqknBmA1BTffbgCojeJKaPpaVMrGWLoHRoS7g==
X-Received: by 2002:a05:622a:10b:: with SMTP id u11mr11121047qtw.1.1622944731650;
        Sat, 05 Jun 2021 18:58:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f017:: with SMTP id l23ls6481299qkg.2.gmail; Sat, 05 Jun
 2021 18:58:51 -0700 (PDT)
X-Received: by 2002:a05:620a:13d5:: with SMTP id g21mr11045060qkl.494.1622944731160;
        Sat, 05 Jun 2021 18:58:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622944731; cv=none;
        d=google.com; s=arc-20160816;
        b=XxdEhu1jQY8nG9pLjZWXpYgDoYGOG296u3X7U4wip/rNXXxMQz1WEPeNjNIOtCotTw
         DLhP2grs4yCZocnE8feHnt8/OBzVpSO9sGwHtxp0LfuphsFBkNlMbpmnNtKVHxVY+0eb
         sesy3wFwT7pHOQL0hRP0sCSZcmXQ2B8FSnxL7lXqn3TSYvbQnRoji65Ac/Otqzb6WDRq
         ibzcLRxpb2UfeVmIHPycMd8TpHtzWqPTiFEKMEhSt4cxNZD7qsNHuF1og3VEGjSzUYSp
         uNTnd8y/1hN1O0TcelUDVb92pm3HFvOZc26YeURbh4uMl4FOIf9rwd/6cfx82wqSj9ys
         OksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cYyrGjaBUAmVv/YqrB3kqZUIXcDyhBPIOEKwA4ICIM8=;
        b=AdunIRYAtEAk0yXbjrEdyzN6rr2IiBe678xOTxcqse5XePTQahJykU0G+g4oshZFom
         gu6aFzNd2fp6jwqytvISg6STq93RhemBOUprzJM3hsnxl6+FPN39mScmyMfq9okwncsa
         n8tZpllgGwDAS/kOQsFqdt0IZES4E/b32Q3OtBTr+Swd98OhxYUlGjWYdPuY2uW6pMy3
         Wba3XtjqN/9SesqM4mS4TNeuwiuK9Da3jkKpqNoiRabAgZ0qzEjfkIoRSWYe/gaQ/eZO
         x8ma62SO0v5F6w4D6+RI9eBT8xPyR0P2LYlaqrZVUD1p7UPxtuDBmVIeEOEBiA/lGLpB
         pcvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k5QllBMp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id o23si876051qka.0.2021.06.05.18.58.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 18:58:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id g142so222619ybf.9
        for <clang-built-linux@googlegroups.com>; Sat, 05 Jun 2021 18:58:51 -0700 (PDT)
X-Received: by 2002:a25:bbd1:: with SMTP id c17mr15378175ybk.507.1622944730650;
 Sat, 05 Jun 2021 18:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com> <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com> <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
In-Reply-To: <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sat, 5 Jun 2021 18:58:39 -0700
Message-ID: <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com, 
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>, lb@semihalf.com, 
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com, 
	=?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>, upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k5QllBMp;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Sat, Jun 5, 2021 at 3:39 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, Jun 04, 2021 at 04:50:46PM -0700, Fangrui Song wrote:
> > On 2021-06-04, 'Nick Desaulniers' via Clang Built Linux wrote:
>
> > > is producing the linker error:
> > >
> > > ld.lld: error: drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o:
> > > SHT_SYMTAB_SHNDX has 79581 entries, but the symbol table associated
> > > has 79582
> > >
> > > Readelf having issues with the output:
> > > $ readelf -s amdgpu.lto.o.orig
> > > <works fine>
> > > $ readelf -s amdgpu.lto.o
> > > readelf: Error: Reading 73014451695 bytes extends past end of file fo=
r
> > > string table
> > > $ llvm-readelf -s amdgpu.lto.o
> > > llvm-readelf: error: 'amdgpu.lto.o': unable to continue dumping, the
> > > file is corrupt: section table goes past the end of file
> > >
>
> > tools/objtool/elf.c:elf_add_symbol may not update .symtab_shndx .
> > Speaking of llvm-objcopy, it finalizes the content of .symtab_shndx whe=
n .symtab
> > is finalized. objtool may want to adopt a similar approach.
> >
> > read_symbols searches for the section ".symtab_shndx". It'd be better t=
o
> > use the section type SHT_SYMTAB_SHNDX.
>
> I think you've absolutely nailed it; but would you have more information
> or a code reference to what you're speaking about? My complete ELF
> and libelf knowledge is very limited and as demonstrated here, I'm not
> at all sure how all that extended index stuff is supposed to work.

The section index field of an Elf{32,64}_Sym (st_shndx) is 16-bit, so
it cannot represent a section index greater than 0xffff.
ELF actually reserves values in 0xff00~0xff00 for other purposes, so
st_shndx cannot represent a section whose index is greater or equal to
0xff00.
To overcome the 16-bit section index limitation, .symtab_shndx was designed=
.

http://www.sco.com/developers/gabi/latest/ch4.symtab.html says

> SHN_XINDEX
> This value is an escape value. It indicates that the symbol refers to a s=
pecific location within a section, but that the section header index for th=
at section is too large to be represented directly in the symbol table entr=
y. The actual section header index is found in the associated SHT_SYMTAB_SH=
NDX section. The entries in that section correspond one to one with the ent=
ries in the symbol table. Only those entries in SHT_SYMTAB_SHNDX that corre=
spond to symbol table entries with SHN_XINDEX will hold valid section heade=
r indexes; all other entries will have value 0.

You may use https://github.com/llvm/llvm-project/blob/main/llvm/tools/llvm-=
objcopy/ELF/Object.cpp#L843
as a reference.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3%2BggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA%40m=
ail.gmail.com.
