Return-Path: <clang-built-linux+bncBDA67XESXUKBBQXD376AKGQE6NUW2FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDAF29A912
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 11:09:06 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id b6sf526168wrn.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 03:09:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603793346; cv=pass;
        d=google.com; s=arc-20160816;
        b=DtyYAhacCjX2x27NwD4j9rhNDfMf9uLbasCMKCmKFviQLkbVpOLQbX4E2D6PtMIu+s
         JSyMLKMeL2w/HFcUaGDUnY+U35n3SWsotxDPSQZ03ESA75Vx46clGOnUH942EHr8ARzE
         GciOYYYW2A0OGwVzSP7bKfw4KIeiVd7H4BmOV4thz37smFw5M+1bbWrtI1HhEZ0/TwOw
         FvvtA0/f3l6vs6E16BUvsYrC+AihaG4lNE1GNl3vH1773UfZ2pQouWnvYWA+hotcmzPz
         m1FMi6uCp6hwCAUSDL76mDTeFHUtBsST95cbZAB1BM8ltTf8ZWOhT2EPLxo+pVp83e0T
         dzEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=2nIdCsdDQ5RbIH8wgDC63zdChG9zWIJlcdE4yZnoI2I=;
        b=vNghifEc0sHzgQcv0yrZVYI5C3yARcc9GPpU51IYZhKTXPKErk5XwpaOYhcv50FzcE
         Z/t+UAIGJT/OS4vAHGBz4YQ3agxV+TkUYWCtE9y5p/ghc0Vr7AXoCM0zGsPAERNky9Gq
         iViv2VEYeXtv7vY3feDL5L7TUgtNkFGsRSpgN7J4+qguQrtcF2OQ46n5rFwB12CL4uQW
         h8XgbpPtZ0GKUNoe5xyu5mvdgdiaRhNGURDW1N8OUtM4kqM9eGLLiA245NzLQ8kGwub9
         7XETtNejh07iaSan5fWvzgd3IA3t1w88vrmGPACGEWSNJjwSa8zQbQYP7JMqHjw+ZUGE
         kueg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vwJDc1uS;
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2nIdCsdDQ5RbIH8wgDC63zdChG9zWIJlcdE4yZnoI2I=;
        b=Tho5mzk05r9us1KuXP2c3WB9yiOMCrtqqX8pDu7+/Ii2w+r13TrCR4VY1Vz44a0Rn2
         QZUPJCH2hKmrtiybUTT4VpCCyp90mEsiPLHDeGANJqLvSDvs3/XTNSrDOBKqiXwWKlET
         bFuXrNLp6hRMurdDz2eXWiNCJJC/3dBORqlWlr6hqEjkdRshgYAmsoD26mXzIYQuGiqd
         CBgWPRZFkxfcWIU3EJREcCX7qgIzKoPoYdidyrfVESjP2XyxT6Q2uYDwiQzCGu3b0X1K
         eKvh8fHF+k9hK3AKo+PU1b7i8+bgJ7T27dt2FTT40egrI6g8ooAWxPsEgBLWt3zTCOh+
         qjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2nIdCsdDQ5RbIH8wgDC63zdChG9zWIJlcdE4yZnoI2I=;
        b=obcoFIoWW2IUs8wPABkUA0FAHTZOJUBSidtrWsnBUlJom8RFNyjQQSPsDOxPqnHPr7
         A233aNEd6ZgFXH/hkhZNjcQiw7OVwOIcbSmJJtoe8ostcmGMn0vHTaXQFGByG3dFclT/
         p2hdAe24Yg89j50YJ/iqkGtyqk3ntTGJywFdf9p+DvzAZGT0LUiwQw58FO8Jy3ifAaXs
         BntunwX+AZv/gElEaasuI/S5tScW/DUH92T/SKrFyyLXCkEa+W+gsTxAhfBiMV4i9nkR
         plqn6kOR1m1PSJmlnV7GukrTBQlWDOZSZrSD4HIY/1NR0wLALoEEvei3q1N165kf3uFc
         BKQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533taZ0GwgNO1ghYVXmmwp00QjKLjgePZol94Hq+OiRy8GQsL1S1
	WHnYmNopG6/kTTn8R16Y/Jc=
X-Google-Smtp-Source: ABdhPJyx+W5o2CxsK+UymIqXrhPKaUBqR82bojPtSIjMEbymlIbvlkc+ZdOhdghxYmdkHvJf1+uG1A==
X-Received: by 2002:adf:f607:: with SMTP id t7mr2037379wrp.39.1603793346201;
        Tue, 27 Oct 2020 03:09:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls1414589wrc.1.gmail; Tue, 27 Oct
 2020 03:09:05 -0700 (PDT)
X-Received: by 2002:a05:6000:1005:: with SMTP id a5mr1989317wrx.360.1603793345371;
        Tue, 27 Oct 2020 03:09:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603793345; cv=none;
        d=google.com; s=arc-20160816;
        b=dRmOsAjfsTcrSA1AuDaY5XZJlgsQjauuKrHXswb6rfHjUTfqexZv6zMeuKUMFqwOZH
         SW7alIO5BTeMewHeeWb31ilfN+HiWt+RetaPxJ5KC83fgwblv4RbRU+Ln2OpJX/NqXeY
         u5DwE7Q1cWksCPe3YkkRnT3IH5SjI0pcpGRh4AyNL8WVFNvx/tckP8fq3XOaxuRt3Yxc
         lEmAGFyXdqjUcF08m/k5QOwh/IgwwnHB0oKfBr/kBoObez6pAk3BwGkVwJLIaWAAR3RZ
         OK4fk6XLd1iNugjTYDWvmLWDMjLcBJYUnqLJEOvLYlJkOInn+oJwJJIWIgj4IrPR8RgH
         S0zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=30KXF4Pr/aWkmgz9WeJeWxLByh2Hd/+V/34/539xHp8=;
        b=xUNLB5UNslUGO8fBLjo2AEdg5Jn+iTFeeMnaQQ6zB6lFNunnD1z1P1nGDXIYZsIpyq
         O3FpOla/YnZefyrwGUjJyG7aVf+O+W30r1dqOoereYwcOm5rvdtj0gwXKrRRWnxQK+7B
         t7Ppw5zWtgNNMLXAMB7kuzBTuDFQezgSKimU0kaX0sSWOsmPDK6/e+n+wG3SM7u+xqJ9
         DUyKXlF3GUpWhe/J9blf5cu2etfMWlB04FbsXkv4t/YMfGP2eVB5+2ZW1yipUjv/6y+0
         +QV47FUtbGFc8sJuIimh2gLZ2x/PgJH/rCLjyT/TLwXQU501YcrWaWCnILSYUDhqrvKc
         sbSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vwJDc1uS;
       spf=pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w6si46702wmk.2.2020.10.27.03.09.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:09:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jean-philippe@linaro.org designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id p93so799473edd.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 03:09:05 -0700 (PDT)
X-Received: by 2002:aa7:dada:: with SMTP id x26mr1379080eds.167.1603793344917;
        Tue, 27 Oct 2020 03:09:04 -0700 (PDT)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id t5sm644137edw.45.2020.10.27.03.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 03:09:04 -0700 (PDT)
Date: Tue, 27 Oct 2020 11:08:44 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Borislav Petkov <bp@suse.de>, Peter Collingbourne <pcc@google.com>,
	Ingo Molnar <mingo@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Message-ID: <20201027100844.GA1514990@myrica>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org>
 <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
X-Original-Sender: jean-philippe@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vwJDc1uS;       spf=pass
 (google.com: domain of jean-philippe@linaro.org designates
 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=jean-philippe@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Transfer-Encoding: quoted-printable
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

Hi,

On Mon, Oct 26, 2020 at 06:38:46PM +0100, Ard Biesheuvel wrote:
> > > > Note that even on plain be2881824ae9eb92, I get:
> > > >
> > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages de=
tected!
> > > >
> > > > The parent commit obviously doesn't show that (but probably still h=
as
> > > > the problem).
> >
> > Reverting both
> > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > seems to solve my problems, without any ill effects?
> >
>=20
> I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3=
.0)

I have the same problem with one of my debug configs and Linux v5.10-rc1,
and can reproduce with the Debian 8.3.0 toolchain, by using the arm64
defconfig and disabling CONFIG_MODULES:

ld -EL -maarch64elf --no-undefined -X -z norelro -shared -Bsymbolic -z note=
xt --no-apply-dynamic-relocs --fix-cortex-a53-843419 --orphan-handling=3Dwa=
rn --build-id=3Dsha1 --strip-debug -o .tmp_vmlinux.kallsyms1 -T ./arch/arm6=
4/kernel/vmlinux.lds --whole-archive arch/arm64/kernel/head.o init/built-in=
.a usr/built-in.a arch/arm64/built-in.a kernel/built-in.a certs/built-in.a =
mm/built-in.a fs/built-in.a ipc/built-in.a security/built-in.a crypto/built=
-in.a block/built-in.a arch/arm64/lib/built-in.a lib/built-in.a drivers/bui=
lt-in.a sound/built-in.a net/built-in.a virt/built-in.a --no-whole-archive =
--start-group arch/arm64/lib/lib.a lib/lib.a ./drivers/firmware/efi/libstub=
/lib.a --end-group
ld: Unexpected GOT/PLT entries detected!
ld: Unexpected run-time procedure linkages detected!

Adding -fno-pie to this command doesn't fix the problem.

Note that when cross-building with a GCC 10.2 and binutils 2.35.1 I also
get several "aarch64-linux-gnu-ld: warning: -z norelro ignored" in
addition to the error, but I don't get that warning with the 8.3.0
toolchain.

Thanks,
Jean

>=20
> The presence of .data.rel.ro and .got.plt sections suggests that the
> toolchain is using -fpie and/or -z relro to build shared objects
> rather than a fully linked bare metal binary.
>=20
> Which toolchain are you using? Does adding -fno-pie to the compiler
> command line and/or adding -z norelro to the linker command line make
> any difference?
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201027100844.GA1514990%40myrica.
