Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFPO5GCQMGQE6D5OP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ED039BFEF
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 20:55:18 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id n20-20020a05600c4f94b029017f371265fesf4868495wmq.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 11:55:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622832918; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9P3QUZOFYU9+2p+xLtus0teil3Ueg7EykvHbRD1E7UHpZjR41vTO2VBywXfWAeElF
         rEUKNt141DDzIyufNO5CYTFjI3C5C6yMFJvfPdURRga2BBUU7a7t2ojUS4W+Tu4e0TJN
         2TzKxiP+/DceGwwngvKWxQI4xMOSBIIv15/EzMOTfZLCIJVqcFgmU0UuoKacNAmDQBD7
         WBabdgEDYaIsmJI7iBHs1HxkfJoF7QUw4bzb+e5JKlSupLbm/EDkyJUA8rc6MFoXamzx
         mY6v+2iODESZZfd6VIBONM7rxd23CvYzwrxkS6wv9LZqNC0RCAG7UK4abCShJ6Jly3sG
         OdNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MpTZCgNM+5VQYHXvFYi6H/aN7H4LdyZvjA6wCuRKeoU=;
        b=MiX7/ilCys6qlHykn+G9vWGk4cvIOX9wq1ipXo2k839nvFGdgNUxUQUHURhz/+cr1G
         KwN1nfIpjoDNGVnjMyDwP8fWRmC3G6YW0cvByQcyB4dfl95REFXSyXph6u69MzqD4Ukz
         5eLUdHt8JTE1gEwXGT8oUg5jHwEaf3QsBS9cdDjnYA7OVOJmUhLNCJapVvMDa3cIHBFr
         LqAcjdWmyGiUsjGK7caXkhH1rGJEorQvjpejvFI/bko4wmeXLJU/54ICbYJnMCPbX1iw
         EzJmIf0Cp3+enP3RzL1EZOMN89wR9ITG1fSAwn9H6hbkjG0WOCU5IKC+BFKgTV/8E2LA
         1JRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ILKJc/Ma";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MpTZCgNM+5VQYHXvFYi6H/aN7H4LdyZvjA6wCuRKeoU=;
        b=NhYBJgmA1HkGJjp7wEvGtsvQkPpvQ8/2G4P1eE4XUGPe5IHkjSoBXqDNGhOCZH5YNS
         Rt2UQJyZk3LAltvfc/bId5fSuRvaIfXHUcJZ2s8S/PWKLYRlanuYNnA0VPStXklmA/94
         Jzo6hMBtkyrsiKQ2jt+LrTLYlDrXS+00akQR4ATQrOneJ4+md1fdTKekOhX8gS1FmyJA
         ZyxLGxehf241Tn9z2qouxBMArRGU30Nkxm8pb/7uNreTQq8XFRNkIKhxani6ce/Qk0V4
         r1oTRy05jo7l5uXa3ryu/+KXAmh+dcN5Ck1jeUwtGFsoKM4p05jBqx8WneOzUu4Omqy3
         am/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MpTZCgNM+5VQYHXvFYi6H/aN7H4LdyZvjA6wCuRKeoU=;
        b=idHDTqKWqvi86QZ0LRStnA89xu21RdUXdy96sEYfrgC6yCkC2ElwcKSwN8ajop1J7v
         6JGBev2tTyD75Q2ss94dH/YuTz3HNzYwBfHncmCN1xhihklELcnTY9g/lyfyvTVeRvf2
         T/ele6fTVnpxviesdDavyEaj1HJ5YIRIpPgleuUF7RzAxKDLIWZVJCeGkOyzAI9RuU3y
         mELy/ol7GlA1s63fw7VnMWam2/TgEuJr8DTUFVp/HBIXbDALZ9HGNhFucgCnahh2/UX1
         QXNF8QkK8CKTuMetaAE9FQH1MqorASrlsbXre8MxKyEMVJiN+NiVdu54DelsVcCLVINU
         qckQ==
X-Gm-Message-State: AOAM532KB0g9ovTDggMqgQaS4qgjenCaxQz3z7aG50Y8azBcmmSsbcWh
	QOOXIOgF/MQ9eFhp+4dAz4Y=
X-Google-Smtp-Source: ABdhPJwkYxaW7m3c7HWX4EMqPlMrNl50KPwauwEd8zTWIwBGxdnVoO8fIhYfjZvh47E1Mwep7bneeg==
X-Received: by 2002:adf:fc90:: with SMTP id g16mr5314288wrr.183.1622832918101;
        Fri, 04 Jun 2021 11:55:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls2808162wmc.2.canary-gmail; Fri,
 04 Jun 2021 11:55:17 -0700 (PDT)
X-Received: by 2002:a7b:c10b:: with SMTP id w11mr5040458wmi.186.1622832917286;
        Fri, 04 Jun 2021 11:55:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622832917; cv=none;
        d=google.com; s=arc-20160816;
        b=oSYngJW/+jJV7k3Nq2K87UHMmk+V990w+1BQb/+aP5lQAFnfVffTmpyvTAymayRIe5
         cIon5E6aSe6S06lMb+VtFBPth78/E4AI21O2ImJMC67YKRNAUs+0rabxhhb/wH26RMtW
         7WuqyHR4pEeznTgEbQ8QIHbVahiiWJ3TZBrm56s5pugcKmkBRfDSd4q5JnvPuGgjLhMn
         h9vbsBcjpcH5rqwE4IS5/9VBElQra0my95/J8jnV+Flyi88cZRmYAsEmflYtwzuDmEQN
         kbOxi0FrdaakLu8xD/zv/b0H3Hyj054sWKO5PvI5BaBRSo48HNp/9A2h62mszqulLEgk
         h3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MAY7KM/K0wP2g2AnxgxdYeWiUARA3nmMx/CzXqNh5J8=;
        b=JCaAcXZ5+ZWM0kkkewIdx0GKDlQtT7m7hAL2p8Zt1YSF2dmTb+Ip1OEtTzD42wIoEJ
         djD2Ijk1SaKtKBoHWRORQl70gDp95n4zUCj+1mZz4qysJ77GxGuON9lt53wGH1/WSLCj
         ii0To5KT9dcG7e/5/icYr1EQeua3ztncU924r0kNPlNLGm+ouotZCoVnS/RXpsVYSiHl
         R2hDBf2y5Hvj7kV7t/1KiMEg12ej6DoBIsLHGL18Y0mLPmbv5cEdBktTxsWcKkuEvMsn
         M11awF6aMAgvalSwesG6lPIGN82oU/XFR2bvirKdqzxA/AaQVqVxwpmWUb8/vzDmI1kE
         es9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ILKJc/Ma";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id k18si598279wmj.0.2021.06.04.11.55.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 11:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id a4so12815451ljq.9
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 11:55:17 -0700 (PDT)
X-Received: by 2002:a2e:b6d2:: with SMTP id m18mr4278071ljo.233.1622832916471;
 Fri, 04 Jun 2021 11:55:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com>
 <20210522012626.2811297-1-ndesaulniers@google.com> <20210526170904.GB19831@willie-the-truck>
In-Reply-To: <20210526170904.GB19831@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 4 Jun 2021 11:55:04 -0700
Message-ID: <CAKwvOd=Ah8LL2XDXQE9=t1hGNTxfeGEmVkVdhUBoQ5P_9eAWhA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: fix GDB warning with CONFIG_RELR
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Lee Jones <lee.jones@linaro.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Elliot Berman <eberman@quicinc.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Collingbourne <pcc@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ILKJc/Ma";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Wed, May 26, 2021 at 10:09 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, May 21, 2021 at 06:26:24PM -0700, Nick Desaulniers wrote:
> > GDB produces the following warning when debugging kernels built with
> > CONFIG_RELR:
> >
> > BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'
> >
> > when loading a kernel built with CONFIG_RELR into GDB. It can also
> > prevent debugging symbols using such relocations.
> >
> > Peter sugguests:
> >   [That flag] means that lld will use dynamic tags and section type
> >   numbers in the OS-specific range rather than the generic range. The
> >   kernel itself doesn't care about these numbers; it determines the
> >   location of the RELR section using symbols defined by a linker script.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1057
> > Suggested-by: Peter Collingbourne <pcc@google.com>
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * rebase
> > * pick up Nathan's reviewed by tag.
> >
> >  Makefile                      | 2 +-
> >  scripts/tools-support-relr.sh | 3 ++-
> >  2 files changed, 3 insertions(+), 2 deletions(-)
>
> Does lld support RELR relocations for any architectures other than arm64? If

Yes; from what I can tell it's not an architecture specific relocation
type. Combing through LLVM's sources, it seems Fuchsia sets it always
(at least when using lld) and I'm pretty sure they support x86.  At
least I don't get any errors out of LLD when building with
--pack-dyn-relocs=relr on x86.

I can force on RELR for x86 kernel builds with:
```
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 0045e1b44190..513272c77827 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -2117,6 +2117,7 @@ config PHYSICAL_START

 config RELOCATABLE
        bool "Build a relocatable kernel"
+       select ARCH_HAS_RELR
        default y
        help
          This builds a kernel image that retains relocation information
```
That builds (it won't boot because we don't have the machinery in the
kernel to self relocate that type, yet).

> so, is the "--use-android-relr-tags" option supported on all of those as
> well?

I believe so; no issues building with this patch and with the above
diff applied on x86. All that flag does is change the elf section type
from SHT_RELR to SHT_ANDROID_RELR.

pcc@ can correct me if I'm wrong.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DAh8LL2XDXQE9%3Dt1hGNTxfeGEmVkVdhUBoQ5P_9eAWhA%40mail.gmail.com.
