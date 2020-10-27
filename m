Return-Path: <clang-built-linux+bncBD63HSEZTUIBB6PL4H6AKGQESGCIQXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 631A829C8FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:33:15 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id 33sf878421pgt.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:33:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603827194; cv=pass;
        d=google.com; s=arc-20160816;
        b=ut53386fQ8VsXspjuhHpXdOufrIA8Du4TDJ/gqhISk2hZIdVB/SEI7cdFZfCC+n5kH
         4WnJVELvSt34xAzXOpBH2jhWQQMwv/PGj1W6LxglLOuY7GpUViw7WLwA9H1XahvGatTg
         oDzVo31H5faiiyySzfvQ06H0hgxE2W2HZj21rrsApdzluLz2SItMrSSxwR3kOG0GaGvk
         EHCgqqSjvm5YD80k/2qCwVY3lbBOoVd9vwrH7Rj5Dsde6kZK74X5eS/JI4GqP0nZJzD9
         kmQf+H8pQm6FubijCNQG9WUCv4a1DJAcCRFu8nGt6U8zRAilxIFpDJbA101ZcjpjHjP7
         EbFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=iMnMIHs9OySnM21tG8AI4Jjfk42Ta86TQBAICUwlK6c=;
        b=c0XozY7uOMnSB0R18QuFsyJZ4z1Jpst5QOF3l8VVmjsGZD8njPndzMmhndHDH5HT3Y
         Rhb1ZoP23ntieMViQ0Fbv6SGC5XuUHecMgkm0ZjoduAo3cMUR+9toQBMJGuq+gKNX8GF
         MefBA5E3KLkNNmStlsntUuOfjIzSker1sIELpRdEqq1vd0gy7uynekHoWvjKZw3wGumh
         x2068N7Vx79BlPQymUBP21eSd4YvHv9KJEwvRL1D/DmqaHLGsdeyfw+zMROtav6AmlyD
         yA0tpbCfrBv8piZ+AcosR1Z5sweX27dFcINMa5+F2XqNQcBjNmUsw4tWp1GFXKYFtTk/
         TqLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZLHgLc3I;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iMnMIHs9OySnM21tG8AI4Jjfk42Ta86TQBAICUwlK6c=;
        b=lphWjeMvE37+0a25hhRKv6b9fHVnqvCBPoHuId1kc/iIeJMwPh8nkA2tb7Ejz9ogcG
         1KnaCL3j1Rm6K7YJlefHQuZA1H/5gpDUvn+lX+qmpPDbxCPPquIlNpacusXtyzBY5h1N
         9W01ys6IksLF3MR67HdOKjxfZhXwkypPXExSNnUAVjfX5QARbumMAb7W3JNCDkF7h1Bc
         gQjbFichIfKV+JvYh0q0pmFTqTgNAfmBfnWjUNdtRM959En4fR6iiMGIw1Wv2vyDs+su
         g0B5pU+l0iWaZB0irSCC8WE9gUyif7LwJIAZ/0Pz8O97pAtlkw4dI6UcoptvHEQJHitu
         8rMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iMnMIHs9OySnM21tG8AI4Jjfk42Ta86TQBAICUwlK6c=;
        b=Gq7Y29JnhB5Kjuyrs2vmO/sAGEyb8OdNn4sm7GH9uaoljq7xevBLBMg5A/BxFHxjSL
         7j4nOI64urP/KZ+9VI9Pn0R5duEGMP/PFArER+cwc6P9zL9/9WRGj7LCCh96Y1wxpTFH
         cdnD5ZTfT9D/6et4wkc1sZT2KRPqB52Slq3ycWmTlXrTU75/GF0jB5hpHpG+SrJXuJdc
         JEJZom7ACQE35HS+mHfNTNYrxyFr2V0A2txa8qqSrfJmVk8NbDCVCHhHScxVFSI/9F2F
         yLkVrYtv4DSdulqsA7ciPPa7x2shaGuFTz5TTwhSDrHP27/FAJthh6GuI2SHGWrvcIIM
         72mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kmnUcLBx9k/ioM8NKkqt+ZEFpDfcJO8Zvgbs7Xjw4SfCdnQAw
	AHn6HL+6AXKZ/SadXyydFlM=
X-Google-Smtp-Source: ABdhPJztlVTssd5AXiz0g9nzFTncs0PvZt6jPRrT70ZNBGSzvjshQRuwLCEgMXoSQtVq/A4IFT1F8A==
X-Received: by 2002:a65:6a4a:: with SMTP id o10mr3409471pgu.210.1603827194098;
        Tue, 27 Oct 2020 12:33:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls1271937pjw.3.canary-gmail;
 Tue, 27 Oct 2020 12:33:13 -0700 (PDT)
X-Received: by 2002:a17:90a:ea8c:: with SMTP id h12mr3520951pjz.31.1603827193491;
        Tue, 27 Oct 2020 12:33:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603827193; cv=none;
        d=google.com; s=arc-20160816;
        b=WrcxU+uTFUaE9QL7g89TXhZkNKE5gQYo8Bmy66jUuHhvmq+KLm8/sKnamk28KTOVIT
         ME1//43mOdJiXjyD4agUYUWhngZtt1n1uby8F/9ByvNGVYlaueKobzyWT+jaEYZ6E1A/
         kd11n7MmKXGTe3FH04idHboooazI+K3pel+MigydwrxUWHNc4IhNgJ4nOfHG5D8xQ/PH
         HJwgY2CRN73RBsDN4b/yna5GRRAKukkSYAIj7lgf8UFd5wcxfPxI0jtsu48+/vKvlOl4
         NyHXdaa9CwDTxyk+gQrVlwUdCsggeMHTcNQp2JDkNMWVN2ho2t4hO/13o2atZ2NXIX/3
         gs5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fzsbwLvdGSJ+Kgby3r9OLU17GqYc/oKZO3Jxig1YfGc=;
        b=mDlEb4Ng45zBXcrpy3jxVJNzESYlzW0+MkkQHFGrzbaSLHibIih7FRTTQLUNi85P8y
         12GqnIWR1Lyrcj3On0dnWtgeQENztVxe2c+bazXAhLf1Wd2WCWZvcACDxFscljgjnk58
         JWR4Psd2G0RgQQo0J/LRSSCPGt660QhKKP792ZGO9XLnDAwdg84xG7yuy8z/R38mVHEK
         2UPRs96cTcwaSPBK5Q6U3SZMoDBADmkXPC7Xsk2zBwB/ASyRKaDTsjDgAR3rKJmxB+Or
         iwX3mFCapndjZePkyxgnI2VevU/N6a+VMKnIMRfbyZn6mXOHsFc8qej/ImjGisGnKQCP
         Moag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZLHgLc3I;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t15si134130pjq.1.2020.10.27.12.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 12:33:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D530B221FC
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 19:33:12 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id k3so2200983otp.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 12:33:12 -0700 (PDT)
X-Received: by 2002:a9d:2daa:: with SMTP id g39mr2760143otb.77.1603827192042;
 Tue, 27 Oct 2020 12:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com> <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
In-Reply-To: <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 27 Oct 2020 20:33:00 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEw+6Srqd5w9oxpik3VUbehapx_TcHLDCbmHZBSdY768Q@mail.gmail.com>
Message-ID: <CAMj1kXEw+6Srqd5w9oxpik3VUbehapx_TcHLDCbmHZBSdY768Q@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZLHgLc3I;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 27 Oct 2020 at 20:25, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Nick,
>
> CC Josh
>
> On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > > > In preparation for warning on orphan sections, discard
> > > > > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > > > > problems with them suddenly gaining unexpected entries).
> > > > > > > >
> > > > > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > > > >
> > > > > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > > > > sections") in v5.10-rc1, and is causing the following error with
> > > > > > > renesas_defconfig[1]:
> > > > > > >
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > > > >
> > > > > > > I cannot reproduce this with the standard arm64 defconfig.
> > > > > > >
> > > > > > > I bisected the error to the aforementioned commit, but understand this
> > > > > > > is not the real reason.  If I revert this commit, I still get:
> > > > > > >
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > > >
> > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > placement"), which is another red herring.
> > > > > >
> > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > causing the warning.
> >
> > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > missing from someone's KBUILD_CFLAGS.
> > But I don't see anything curious in kernel/bpf/Makefile, unless
> > cc-disable-warning is somehow broken.
>
> I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
>
> Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> is generated.  Removing the __no_fgcse tag fixes that.
>


Given that it was added for issues related to retpolines, ORC and
objtool, it should be safe to make that annotation x86-only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEw%2B6Srqd5w9oxpik3VUbehapx_TcHLDCbmHZBSdY768Q%40mail.gmail.com.
