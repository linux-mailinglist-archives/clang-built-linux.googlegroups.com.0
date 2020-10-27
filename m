Return-Path: <clang-built-linux+bncBD63HSEZTUIBBOGO4D6AKGQEPSL4V2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A44629AE21
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:57:13 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id e7sf970054pfh.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 06:57:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603807032; cv=pass;
        d=google.com; s=arc-20160816;
        b=sb3/wAQDe39gqjvJqtDmprxNSg38w+citWnZxvXKaamnZdTEroT/ulscwt4VHYhE6W
         I6NJ1x9vid0V6JhQGOwjZ74GMummlt+FNrbK8amT0zsQKLn4KLuexoXeF9whBlD82tkE
         lp4TNSZxTD5uHWuAKO8xWzSJ6JalMRvil87cYguGoUdpBgAfypBF6ti+32sg439mLQM1
         WLk5GdR6NqKq4sEam+pp/0nNWdorcvglxBOEGxlB7RNjv5Ag/nCrltZHYfMU9hKYhyod
         4lqnY5Q+jPfrc7TpNWhjqiYXhwpo87IgwV7WscVx35sPSmULSjuBLINTigBNaHuxk38Q
         nacA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=mA1I//nxY4CA8YSAH/Mtgy7dlXp9tJmCEvbQtyiQkiE=;
        b=JE47rRr1ynetKVcwiucDQEfUJP36dZ1IKq6zmq76keYV9s5lXeRx8rVKRARdDDTCU+
         rHGLSVIb3THmsTY6Zj2HZ8yBBgxiB6SFmgvURy9s2lj3lg5vRolYaprg7qYVJOdK4EFA
         4Xeps9eWNM3bpK83WYOOCfR1uQhEHUNf0azkGowQT+3J54IikcFese+T0WhpNb+WOwQ1
         IB2u2P/RCkpo4fYqfyweahseca6TOtP7k1m3YG6U+bgfTx+PdnXtf5izmovRf/4JtJFq
         iGaatbmNSFD1Y/XDSbonldl18NQHFm9sqkedncCIFGvq3dJZnYq0Bl+DOJRVp9fw6OYJ
         lwGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KLVSIVYk;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mA1I//nxY4CA8YSAH/Mtgy7dlXp9tJmCEvbQtyiQkiE=;
        b=Xz2AGQlwnroijQY5UmPmBBlEEUQx54RiEGyCL5OpVLz7tHoV8KdRWmh8mGIXFIS5qk
         Lz4i0YelEP6snnaWvYJuVJo5AceZ+ZiyG3hQcD+G7FfR/tSV6haNujSfutCUmnGk8G7D
         5G3u30C+QfNzmOrkHaBgeTiY6kCrVHXkjrTsvbm/y9PbU7BSK0h2pyDnIhbPrrsfjL/c
         wKGVLEXdJF7AWa1EmF1pJOtgZXh+CBRPzZIJd4vvZmqMr7CkxzktQ6lsjVHUYH8xGGvc
         JV8noucVUcMlOz0CLS2SKRXTjEkZlhO09lVQLctjvWe6Sdj/YksKPCrpZ6PegC1iHUsU
         JryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mA1I//nxY4CA8YSAH/Mtgy7dlXp9tJmCEvbQtyiQkiE=;
        b=IGuWL1XCaTXONjpxqgAzpzSKPuobdWSh6twD+l6uf+iTTAiYNLvALhxns1+h8JK5Jq
         0sKTEqPK22Y1HNRq86vr9po4lDM4c+6riitdgbuRuRvrXpVzsipR8ufYR3WG2eK6BIDo
         PGq4wlFsWFGCSleMe8uTOg7Cs1ik03EceLxgZrFBIiB4TKAElxeZlOxfOmoRplkofCUo
         +qU2YdIWj7poyJiVg/ZhuTw1jZEX5ozOoBQFc8dVuAN+2mm7HByWoMk/4FL5Nw5Jg7hF
         rR5ND+BSt6gUhXSe7Ke9GrKVhoLvJinj0nMszGxyKscnn4jdHri97tYt1ONBgDGcM1v5
         p8/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329a+UeVUFOFLVlBxaxtSF3xUr7OWDFp1e7z26HBYzrkl0Lyog9
	zp7+V8k6130lKKgY7zxpWGk=
X-Google-Smtp-Source: ABdhPJxWjVGxXZciuljuppcVznhgHmPq+n9kQobmdYaAGfrnAlOmD0xjZM8+eUVIh7ZuXHAyDhpeiA==
X-Received: by 2002:a17:902:a609:b029:d5:dde6:f135 with SMTP id u9-20020a170902a609b02900d5dde6f135mr2705494plq.75.1603807032129;
        Tue, 27 Oct 2020 06:57:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:62d7:: with SMTP id m23ls695203pgv.1.gmail; Tue, 27 Oct
 2020 06:57:11 -0700 (PDT)
X-Received: by 2002:a62:ddd4:0:b029:155:af54:3000 with SMTP id w203-20020a62ddd40000b0290155af543000mr2604849pff.64.1603807031524;
        Tue, 27 Oct 2020 06:57:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603807031; cv=none;
        d=google.com; s=arc-20160816;
        b=G1u8FycAUuFcCCs9G9O5kDGZuKBluJ3F8m/zAZn8KQspI/ZetO8WMrKg2acxy/qjxu
         DiS2zPsBt637ypBlGVm4nFZErrzES8PzwQk9W61Uywv1eNzId96IchsftoFoRGQuJrww
         V3ZJPcjIzViRiIKqwqoZ13yxHmi67CAyoSLeLU1ynGa1Z1n5PZHraxPIX4dx9Ljth9O7
         Qt+ylYMrJbJi+mbXV5TEqRIEBbGlbTuo0yvCfRfjts7WnN83jhaw8vgi4RpNZwnNQnaG
         Ict6kRSxCZss3WCp4oH+Cp2AvvTSULpNX4wuH4neOzpKh1QLGRLxwN+cEWz37NWAJjFH
         CndQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6axRHF8QfwOzrF21UrS/Nin3k7OeE2jfnupvs6ilfkY=;
        b=r3lSiyfHDmEv/yzLwf8OG22MGo9abVEJXAVYv+XR7nY0NNJ7biQ+Sapcv5Pg/Xtwe/
         FlNXr6k3MuBkzhE/OGMlYAIT+7vXsH7QG0cB6vleht0SLK07TZF40uyIP6J+K/WCzvIg
         cQqIwZZru1G/lBDZ+5ROv2PEpGcnKPTWrcfaa8S0fQ6n/fLoAQLZd+MxuHdwupGrOUoF
         WVu4t5K2lg8oxo5/6qrA3pTf6dV2VLhEl+sDyxrVkftzZ3guw4ymHahCWzgpDa8vkMdC
         ibNeAE+BvCiM/zUK52UvFJB2giQ6lOce4mcgNmWYK3gLST459+en9vqRlesmyNtv6pVc
         eabw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KLVSIVYk;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x24si111507pll.5.2020.10.27.06.57.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:57:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 18A532224A
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:57:11 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id u127so1345559oib.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 06:57:11 -0700 (PDT)
X-Received: by 2002:aca:2310:: with SMTP id e16mr1479442oie.47.1603807030355;
 Tue, 27 Oct 2020 06:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <20201027100844.GA1514990@myrica> <CAMuHMdVkLXmJEiV-uwOqKnfGQZX65tMFMTjs0O8q5BJsAhCGzg@mail.gmail.com>
 <CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ@mail.gmail.com>
In-Reply-To: <CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 27 Oct 2020 14:56:59 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEWJ8ZqerzVheWwT8zVT6MUivO+McyuF7tjHywWHyGnnQ@mail.gmail.com>
Message-ID: <CAMj1kXEWJ8ZqerzVheWwT8zVT6MUivO+McyuF7tjHywWHyGnnQ@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Borislav Petkov <bp@suse.de>, 
	Peter Collingbourne <pcc@google.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KLVSIVYk;       spf=pass
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

On Tue, 27 Oct 2020 at 12:29, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 27 Oct 2020 at 11:20, Geert Uytterhoeven <geert@linux-m68k.org> w=
rote:
> >
> > Hi Jean-Philippe,
> >
> > On Tue, Oct 27, 2020 at 11:09 AM Jean-Philippe Brucker
> > <jean-philippe@linaro.org> wrote:
> > > On Mon, Oct 26, 2020 at 06:38:46PM +0100, Ard Biesheuvel wrote:
> > > > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > > > >
> > > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected=
!
> > > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linka=
ges detected!
> > > > > > >
> > > > > > > The parent commit obviously doesn't show that (but probably s=
till has
> > > > > > > the problem).
> > > > >
> > > > > Reverting both
> > > > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement"=
)
> > > > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > > > seems to solve my problems, without any ill effects?
> > > > >
> > > >
> > > > I cannot reproduce the issue here with my distro GCC+binutils (Debi=
an 8.3.0)
> > >
> > > I have the same problem with one of my debug configs and Linux v5.10-=
rc1,
> > > and can reproduce with the Debian 8.3.0 toolchain, by using the arm64
> > > defconfig and disabling CONFIG_MODULES:
> > >
> > > ld -EL -maarch64elf --no-undefined -X -z norelro -shared -Bsymbolic -=
z notext --no-apply-dynamic-relocs --fix-cortex-a53-843419 --orphan-handlin=
g=3Dwarn --build-id=3Dsha1 --strip-debug -o .tmp_vmlinux.kallsyms1 -T ./arc=
h/arm64/kernel/vmlinux.lds --whole-archive arch/arm64/kernel/head.o init/bu=
ilt-in.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a certs/built=
-in.a mm/built-in.a fs/built-in.a ipc/built-in.a security/built-in.a crypto=
/built-in.a block/built-in.a arch/arm64/lib/built-in.a lib/built-in.a drive=
rs/built-in.a sound/built-in.a net/built-in.a virt/built-in.a --no-whole-ar=
chive --start-group arch/arm64/lib/lib.a lib/lib.a ./drivers/firmware/efi/l=
ibstub/lib.a --end-group
> > > ld: Unexpected GOT/PLT entries detected!
> > > ld: Unexpected run-time procedure linkages detected!
> > >
> > > Adding -fno-pie to this command doesn't fix the problem.
> > >
> > > Note that when cross-building with a GCC 10.2 and binutils 2.35.1 I a=
lso
> > > get several "aarch64-linux-gnu-ld: warning: -z norelro ignored" in
> > > addition to the error, but I don't get that warning with the 8.3.0
> > > toolchain.
> >
> > Thanks, my config (renesas_defconfig) also had CONFIG_MODULES disabled.
> > Enabling that fixes the link error due to unexpected entries, but the
> > .eh_frame orphan section warning is still there.
> >
>
> Looks like this is caused by the VFIO driver doing nasty things with
> symbol_get(), resulting in weak symbol references being emitted. Since
> taking the address of a weak symbol can yield NULL, the only way for
> the linker to accommodate this is to use GOT indirection for the
> direct symbol reference, so that the GOT entry can be set to NULL if
> the reference is not satisfied at link time.

This seems to do the trick for me.

diff --git a/include/linux/module.h b/include/linux/module.h
index 7ccdf87f376f..6264617bab4d 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -740,7 +740,7 @@ static inline bool within_module(unsigned long
addr, const struct module *mod)
 }

 /* Get/put a kernel symbol (calls should be symmetric) */
-#define symbol_get(x) ({ extern typeof(x) x __attribute__((weak)); &(x); }=
)
+#define symbol_get(x) ({ extern typeof(x) x
__attribute__((weak,visibility("hidden"))); &(x); })
 #define symbol_put(x) do { } while (0)
 #define symbol_put_addr(x) do { } while (0)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXEWJ8ZqerzVheWwT8zVT6MUivO%2BMcyuF7tjHywWHyGnnQ%40m=
ail.gmail.com.
