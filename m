Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX4F4L6AKGQEY2EMNUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5857C29CA22
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:28:16 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id t19sf1297416ook.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:28:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603830495; cv=pass;
        d=google.com; s=arc-20160816;
        b=AvZxcBjwX0cxzlfkCRF4UTV8YyCUjNICl4h9UKOnhx/TS0ApTM/NXxY39HgKqIZpBB
         xZ65SnabzwRkaPtSMqyLRMXwZDRtT8+LtqXqBE63cvZnTqBl0nzEmiNwGdSRj5J30UO1
         kdVmhh0d/BOC3x1qx7gSxp3BM2l4HoLfkp3c/qo0xj5PMzONiL3T9mBYVOvzWsprBjSE
         1IuFWM/ONIPKmmAyXDSUUl7bIirHVnGI92kx/sigugnClciWduIWatok+qYiv0v7rhqM
         CasR62FCYsiLuNPbFETWoxkTzqBceGrmRmOIotagXqqXduvu8xL+3T4i+1vpa+9w7GRb
         e9uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RA32KcDWxhA7ziAegz8RtBF371UQl3uAdYW8i33MtSA=;
        b=RjOSbyYIAiKoTM/oiazhq3NUMI9cjnYT+AxApo3qUKHgXYJNgSWeW0O+vT1TYlesPI
         SjBE2Ob9VN/undEThLoXxZgw/xO8Tk7MB+O8UAD7G8lqkq1hDiduaMkVuQDh1328PVcJ
         UdGLRR8v+KWww1ea0k+Q+/JAgjld4enpGhvs6voBzbrqtrZSuWNH/9LPs680W3qJWcqR
         fXfEODqKd5WgmGHWcV0muSw8JExgxQvQ+cG9etI1iwlF2NJPwweTLHP49GbkxHqh1u7c
         32tOp/TZ4L4xeAeeuYVdrZ1vxR5lHk6J4oVxNZAuwSNNqMng5mZVpBKQHJdwMEQlzghp
         PZfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VXmwLNHk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RA32KcDWxhA7ziAegz8RtBF371UQl3uAdYW8i33MtSA=;
        b=ZYjBXhmT0TjNLDKEXoM8d6g0tLSNn6rjS70YXpfasSrZUoYzCw8bgzPfZi475lN0TJ
         OafjvFDb37bgBBk2z0R/XXQyf5tUe3xeS0wsVfRgUtOUEZMdB9YUcqDvIZSoBCR78KVf
         /ivszQTy4BouvnehTquozxk2ulo08H9rc47dkuzkZranD8kvEMptKNlH5xRNPHJWTjr3
         Bw0Ovzgy7AuS0DqHJWmp0JhHyFFXIiQeoELWnwA6Fp1UV4H1ozT/E0qk6Fd13smbTsZu
         PCfY73JIgEBSF2T/Wq0VtXo82yhf+IqjlKr5SyQDacq94uQegdu+gPxWYwZjUQlimUrh
         lkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RA32KcDWxhA7ziAegz8RtBF371UQl3uAdYW8i33MtSA=;
        b=nSdO8M0QDsAPQvPyvVfUkUB30zWqXIWJ1yO0rjWcQnmt4MRPpyM1ZLF2OfzQWZ7g9G
         hmOCFw3H7pV806g1Iqq3CdjqUlhDDnPF58ekCEruh51s6im+hHlfo5w+QqS1wkFhQAz4
         HkN8Tqng8o4DjSU6krcMZ9GbHgXSdLXMqSzW3/Xn3XLZjvtmcbtsePZ4zLdo0UxztI0v
         7B84OM7qrdXqMQ+gKScxF1AKgHWdemo3P3Kenv7kD6G/2rlxwmlnP8mZhfW4Q+b6QqTY
         +EwOfGqP5+Dzh25e99VnOIxhVUFSvpHeHyrKSiEKSB+FYU6CBc+UXhJPTZ3SsJ7+30r3
         q69Q==
X-Gm-Message-State: AOAM532yTMkIQlG1WRqYjmgsM7VjegTecIHGywhTbRI0PYUu27YUUNSx
	3VHQYXISwXt3+fM4qdneNLU=
X-Google-Smtp-Source: ABdhPJyEl+g9Kp8yFNSndAG4DTwRnQGS7FssFmiXcYQk7FvtEvJB3HLwXjSgrgi+cqcYDXPs78dhMg==
X-Received: by 2002:a9d:6d97:: with SMTP id x23mr2814850otp.261.1603830495243;
        Tue, 27 Oct 2020 13:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls774312oie.2.gmail; Tue, 27 Oct
 2020 13:28:14 -0700 (PDT)
X-Received: by 2002:aca:d5d2:: with SMTP id m201mr2794502oig.74.1603830494928;
        Tue, 27 Oct 2020 13:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603830494; cv=none;
        d=google.com; s=arc-20160816;
        b=nr9zHcHHnjx4tOyDrY6QU4XxxU1sOecAmRqFJjl3EbP0ITZG6SePERtAVxQw6dWYpA
         tx4hrAkVnYs1C5QLEzYl8V4B3Qx1isluCwyxssquHKWDXEvXQozrUYpLNzhsuWN7hVjf
         pa+YJpToK6PNatxX/ZOEVMuGFv+TJPpTHo2OyzYVdUP/jFO/rUBEoRExEJMS6EyvjB79
         iwJRmdvEmcIbBMmfl0b/U63IwcHqojd5Bvbq7DmtBJH+yjk9la8sRq78P8eYcRE04hzt
         o1TKPc2Hf0KE8UbCiIOvYJDIEjlapM7eNx8njpmEkNaajyc3JqnZUBr6A0BXy97rPR89
         +Ejg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3vH0jRuNNXMpR78OFAIDC7FB9qzF1hw7amK8Jt/4qu8=;
        b=zGqB3mD+CSYbgUtKOal8F191R1pgxw1+GTDRpT2pASSgjsjg5xbx2Eu1Irwk1EavGD
         FZ4ocUOTB12bHimXrv6Ae0ENVxNEmXphMKmTtllY1NE65DMJxtpTHWKGmQjtMzdXno4c
         JzdOOb3SC0BP04bKmIn8oKLt3xvGUP+O5XQqR4DNjzbuQp4RV6HLRL+jbhqfUJ2AuAm+
         53cpBZ7HLb1SGJn0BlOVJ5Trbe2L2zjEiv9c+9qh1snenl3du+Cssh7F3YcH6SixRDPv
         j597sAnzIzsFWHhFe7qV5EdAcjISjf08fjUBOqOZZUsEYI5TWHNyypuc7p0nhWgw2jTH
         2nMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VXmwLNHk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id j78si252705oib.5.2020.10.27.13.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id a17so1388011pju.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:28:14 -0700 (PDT)
X-Received: by 2002:a17:902:db82:b029:d6:3fe4:9825 with SMTP id
 m2-20020a170902db82b02900d63fe49825mr3848830pld.29.1603830494061; Tue, 27 Oct
 2020 13:28:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com> <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
In-Reply-To: <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 13:28:02 -0700
Message-ID: <CAKwvOdm9kuKoVnQoVo7T91gRb9QiCTp2G_PnwbdPM=o710Lx5A@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VXmwLNHk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

(+ right linux-toolchains mailing list, apologies for adding the wrong
one, I'm forever doomed to have gmail autocomplete to the wrong one
now that I've sent to it before)

On Tue, Oct 27, 2020 at 1:15 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
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
>
> and mentions objtool and CONFIG_RETPOLINE.

Thanks for the context.  It might be time to revisit the above commit.
If I revert it (small conflict that's easy to fixup),
kernel/bpf/core.o builds cleanly with defconfig+GCC-9.3, so maybe
obtool did get smart enough to handle that case?  Probably regresses
the performance of that main dispatch loop for BPF, but not sure what
folks are expecting when retpolines are enabled.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm9kuKoVnQoVo7T91gRb9QiCTp2G_PnwbdPM%3Do710Lx5A%40mail.gmail.com.
