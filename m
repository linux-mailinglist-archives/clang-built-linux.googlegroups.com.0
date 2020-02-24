Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYX22DZAKGQEKI6AV4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ABD16B1F6
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:17:23 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id c2sf7449115pga.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:17:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582579042; cv=pass;
        d=google.com; s=arc-20160816;
        b=imOIDv5cq4TE7HNNLGJHQZYJr7UJWug24iwgPc5SGzdKjdyviLhE915s0skwlOVKDH
         dEANlAS5toX4sjeneif8s4tcQy6ULF4AkLw3IMeOFMmeaF4ZAoncwU4Xzt7jliMPtbBH
         7WNgP57dzg6tcA2sqOX8mXRFmZ1815Ed3nN6R98RHoaZHZ8/dfsREfCkKWP95AWtKCqq
         do61je8k/t6izUNigfEHmJbJaD3hyue1xrUYUSxTYWBhp5FfBdaWOVx/vqrimOOxSK78
         VzVDtQ+opV4TctXlfK8McMbjQD4ptGyD1SYBjTB32j531bMgxLWkW3YGvV2DnTJKDe5d
         furQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PLffpxEd4yt7mk6NN6F/7Ml5avoURmcJIOmoOCHCN3E=;
        b=qrns2gyBRGqlzb5H9K/MTjO6LECZgfjmMsqd+u2VymCrh1Ig2ydp9Vp0sw9C5GcILB
         TARqus0E2cVJ8Bc0z126fTJavL/JbLlBuWvgOsyZuNpjyu8Ngx7ZOLI2OQSwjtz9ON6+
         831cghcJ8Btn77ZxQXXlEkAYywTt4IXbLUz/h5jDImZqhsq2UT3xgosy5yo2EiDkKiiR
         77Wfh2ju7x6+Am/Wqi56BZ3gqo3US45q6IqGV39wOckCyH2vr3pOGbtMwsvtP+RI65nV
         DhJ5ZIxgYLX/mBINusxkGgP5YEJzVYbvxtpiW5OpmWgFloHNX1dO0T9eYDGqJHCEIsuc
         V3UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgLHd9z6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLffpxEd4yt7mk6NN6F/7Ml5avoURmcJIOmoOCHCN3E=;
        b=qHSghVst6eQantYSRLhB/Ctq1MWFOf4BEcs0XhpY11k5PV4HCpEhPH8IrV4kjMOpQF
         s52IKcmEYAIDDX3RqASDGe9ibsJUKvsmraFrSt6MdQ4aKWGUKdmd5x8jAB42xU/t/WG7
         sf6SNz85a4Vfpq/KOiXFs62Q9xYP1VgBdHmHGwfwQZWE6tNnxfIP3NLNj0ZhPhdvwzWw
         /Mxq8p+lhB88+SMoSWBYt0/Irf0iRj3Hu1PDVugWnvt07wded3nK8wWDknQ4TQLnMrKY
         MdhnX2ksC8/GUH7ixnsCV9huhE3JRFGl5outu4JB96U1U3Ng4inbzJcaGTYZVE4L3LkU
         AHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLffpxEd4yt7mk6NN6F/7Ml5avoURmcJIOmoOCHCN3E=;
        b=Hu1uDt/Sh/gROOAnDmThuuUOGrYLUuPK7epy7XaNHQG2P1K8DsNesLOKOVbJglZI9f
         cMii8+ctBFi/imr+8YXMwIF8TNHD1/xLuj6YW2H4u2Dbpk0n3MHOI3RDunAZ22OWQ0py
         Bw8K61GRxKXhadcT5FmEHOcZtr7MsLZ743Z1d8TBaYVI4xTuyDjUkRjZ3XQ2bALn5bIF
         9LSMyE3er3E11PA349NKMZOVEmhLwbMlFDTfchItysiowIa3mNoMcBhrq+0cwnKmZsj6
         gYQlhwZ6VZETeBvVtWqKeFIOgF78/sJ2/5p9TLsemFY3Aqihw/RPSwxMqm0Sp49y2UnZ
         P2mw==
X-Gm-Message-State: APjAAAVmpJSmHYIq5CiHJZVDxYJCwDOOWWHD+ar2C4nEx2Dk2Qth5gcG
	yoHZxNjC5p58513ZDmNxlR8=
X-Google-Smtp-Source: APXvYqzdGgwv3SDptHUc0GRe4AbVK7r80QVM3rrHfwmLCXbgaKtZUzN2EbwFtB+LI/kT8ZHdTTY88A==
X-Received: by 2002:a17:902:8d91:: with SMTP id v17mr49753306plo.53.1582579042448;
        Mon, 24 Feb 2020 13:17:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b601:: with SMTP id b1ls3579442pls.3.gmail; Mon, 24
 Feb 2020 13:17:22 -0800 (PST)
X-Received: by 2002:a17:90a:d801:: with SMTP id a1mr1239196pjv.34.1582579042036;
        Mon, 24 Feb 2020 13:17:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582579042; cv=none;
        d=google.com; s=arc-20160816;
        b=naXh2cG6HQYf9dM5X/Q+bX9Jem60Yuu1pVnz4gOFWXg076WOt83cUOrn1RQz0oeGq2
         se5DDGQohV4ACa43+k+1EBytT9lfRpOy1aer5ubkhcrqkFcm7+9VazujAQSwrwVjABB6
         DXG3+vf25omiRLO8D7kPDoYG7a9BTVqu2MStT68iUWdM1O8jXPEK6/HptYNMlLCsRFee
         jemcvC7ZYNi0TL6uwLhdMj/gouSmSjynxTAe4FawVde/ujePDUASjZDCixjcyGWDKbPq
         4kQ0lXMt+TRhVE0KjfgXO4upeK0J9MLXjm2ga21L27uo/IF7aVNrpedc+Mie5JI7CJsu
         Ssbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n81gtXjw+2ieZ/bEPe6r6jWFZXVIieracfuZrlD29fQ=;
        b=atboqO9LP90xq1cu1KIxYO+Wo9rlXnwlOcXZhcMSrZxUJoh0eUrNaePOl9XKtFuT6D
         ZjhvWUn6gOMsdGc2/V4QSL9nUmpW9gokwMWSaYF1819wHnCac9SyuH8tJ2WhfIKteIHc
         ALpfD045/idRATVoum6UD1veiMqP/dHKWNymfR06w62XBXdKYT+r4GS1V1bxyBbAHgcM
         N+/+CriWQZkNCdb2Q9n4y7H8VI7JfBazviTzLNtki1L/Wok68t/WJ91ntG3nwgYRWyzR
         opGM2Gr+9ezajDFk7dJxZZ4WpPkClhtZMrgbOEfftAGgcsdkQMv3pd+COEIpILc6FXmW
         QNMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CgLHd9z6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id m187si945312pga.3.2020.02.24.13.17.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:17:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id ay11so4566537plb.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:17:22 -0800 (PST)
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr1149344pjs.73.1582579041319;
 Mon, 24 Feb 2020 13:17:21 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-2-nivedita@alum.mit.edu>
 <CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ@mail.gmail.com>
 <20200224210522.GA409112@rani.riverdale.lan> <20200224211209.3snqf7atf5h4ywcr@google.com>
In-Reply-To: <20200224211209.3snqf7atf5h4ywcr@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 13:17:10 -0800
Message-ID: <CAKwvOd=4YAj1yzncXeyDvw4ghuPCHNYU0NMGnYEDwKNozcm-uw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CgLHd9z6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Feb 24, 2020 at 1:12 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-02-24, Arvind Sankar wrote:
> >On Mon, Feb 24, 2020 at 12:33:49PM -0800, Nick Desaulniers wrote:
> >> On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >> >
> >> > While discussing a patch to discard .eh_frame from the compressed
> >> > vmlinux using the linker script, Fangrui Song pointed out [1] that these
> >> > sections shouldn't exist in the first place because arch/x86/Makefile
> >> > uses -fno-asynchronous-unwind-tables.
> >>
> >> Another benefit is that -fno-asynchronous-unwind-tables may help
> >> reduce the size of .text!
> >> https://stackoverflow.com/a/26302715/1027966
> >
> >Hm I don't see any change in .text size.
> >> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> >> > index 98a81576213d..a1140c4ee478 100644
> >> > --- a/drivers/firmware/efi/libstub/Makefile
> >> > +++ b/drivers/firmware/efi/libstub/Makefile
> >> > @@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)          += -m$(BITS) -D__KERNEL__ -O2 \
> >> >                                    -mno-mmx -mno-sse -fshort-wchar \
> >> >                                    -Wno-pointer-sign \
> >> >                                    $(call cc-disable-warning, address-of-packed-member) \
> >> > -                                  $(call cc-disable-warning, gnu)
> >> > +                                  $(call cc-disable-warning, gnu) \
> >> > +                                  -fno-asynchronous-unwind-tables
> >>
> >> I think we want to add this flag a little lower, line 27 has:
> >>
> >> KBUILD_CFLAGS     := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
> >>
> >> so the `cflags-y` variable you modify in this hunk will only set
> >> -fno-asynchronous-unwind-tables for CONFIG_X86, which I don't think is
> >> intentional.  Though when I run
> >
> >It is intentional -- the other case is that we're building for ARM,
> >which only filters out the regular KBUILD_CFLAGS, so adding the flag for
> >it should not be necessary. The cflags for ARM are constructed by
> >manipulating KBUILD_CFLAGS. Besides it may or may not want unwind
> >tables. 32-bit ARM appears to have an option to enable -funwind-tables.

Ah, right the `subst` from `KBUILD_CFLAGS`.
Are there other architectures that care about EFI beyond x86 and ARM? IA64?

>
> clang (as of today) has not implemented the
> -funwind-tables/-fasynchronous-unwind-tables distinction as GCC does..
> (probably because not many people care..)

Ah, thanks for the clarification.

>
> >>
> >> $ llvm-readelf -S drivers/firmware/efi/libstub/lib.a | grep eh_frame
> >>
> >> after doing an x86_64 defconfig, I don't get any hits. Do you observe
> >> .eh_frame sections on any of these objects in this dir? (I'm fine
> >> adding it to be safe, but I'm curious why I'm not seeing any
> >> .eh_frame)
> >>
> >
> >You mean before this patch, right? I see hits on every .o file in there
> >(compiling with gcc 9.2.0).
> >
> >> >
> >> >  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
> >> >  # disable the stackleak plugin
> >> > --
> >> > 2.24.1
> >> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4YAj1yzncXeyDvw4ghuPCHNYU0NMGnYEDwKNozcm-uw%40mail.gmail.com.
