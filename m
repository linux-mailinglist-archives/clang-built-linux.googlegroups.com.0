Return-Path: <clang-built-linux+bncBCT6537ZTEKRBOEU4D6AKGQE2ED5X5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 136E229AB38
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:53:30 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id h5sf182860vsr.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 04:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603799609; cv=pass;
        d=google.com; s=arc-20160816;
        b=FajJQ5WNbGgG/BG3AaALMKGoXEJ8xeMwTETtBHG3C31lO9nfJ8NBsjTgAlHFwOmHIF
         /1WCG4H8lta7KgxQaLlnkCvQV6LpukTyZjIgfHM3kreRp2drjXdAwh4IaNB6QmtqK9ls
         z6BDd60XIzhUvEY702d/VCkmPQBhmKKovVtfuInBV9yM8MeZx/0ptcNzO2UjGEAra4pq
         kkmhd6h38Q/4Hpcu69R3mfIfHvGVuUhWoqzGYvpz7QSMENfiIDvvfJqBd1GRJX9t0xJd
         IqKS2ZKk+SheX80srtSFoUU62f1b+NVnBTxenhTX+GUP4GSzjVZtd/VbvKCBYQ5NuQlf
         k34w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=ZzZVONhAk810va/keyhHCIgDYVL1XFoTc8MwqAGEZO8=;
        b=hiyyA96GT5Kc2xAYmoeciq4httJKU8wfm/CeamU5OtSroeCG+WtGCMh3DbtGMYytEb
         8t4m5kvP1o+5tCjK6C6tWopo+1CyCPGF5edqIFnlC9O1u1Z+juY09VFJF1j/ybS14K0o
         9UM+y4i5oEacQfh0IBzZpVXBGeVWQWilQQgvqSOnZDxXHJRlEpyQjLkNK2UkUjKm2k6C
         nqN95zXYQgTMSRuIIcNLqvYEsDN6TNqJHVu9VteXOfIZbWnax4XmAl4RssHRn67Qs+Sv
         aOy8lVlGYmYcUv2+6Jttol/kqnVGkZtqyx3XQEzFrWn0CTRAkE4DZ7UYbVaqZxN1ktpu
         gf9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iqYh9kcc;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZzZVONhAk810va/keyhHCIgDYVL1XFoTc8MwqAGEZO8=;
        b=C/dBVaNQ0XQ0TYfGcR3JLmxJMo4DjwBmbVFjyigSzW7Yt0AfJ50QaQ/LVmKA3ghbzK
         OQYji/s4Xx7chN1sI2f39Ab1FCdCB3YqSNU+rX6hOipunmFSTphtmzAaEL/9r6WvYp6k
         M4ni4sG0JuQRsscaz8vsr4ayDg+1WiorlWEI2v2+ciWGthOFqsZek0tThpSycW4AmR3v
         i4kpNPc0hQtYnrj3LRxzp0PMTrxkCOkoJEToVJvc43OkqifMouG90cupj0QxQjfOPc+A
         NzNme31crx5L7Ti4/UFQfJmDaaBAQYnc82A0qfT4fWfySj43h04KpT5bW27lFin/84B/
         3gnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZzZVONhAk810va/keyhHCIgDYVL1XFoTc8MwqAGEZO8=;
        b=KwdnMDNIEyUMXWtJSSre/97/MrC4EIkBgY6XpelUOBTRtIej45zh1UfANlqxLt8fGh
         VLvk4hx+l8hDkGJuceE9VT5dpDZE4akWooVXQAXw7IMxjLiT8dpmQjXIPjGgxKHgL+cS
         8WznkR3+N3j+Z6Iw15LkhtGhbFbPAB2wRvrAVgfSB19Dmrywf/7rDMFXvPtnAiLwm7Wg
         8cjFPCpK/8Y6mSnSYk8xciykaDEL6hQYR/PKrNEuX3LRoMW2Mz65CmfF6cQk6RWargBh
         6gcj9JiiPAUvllYcpULme4gBpTHM1QzHkqXzDggkb2MQ8Ug6Rd1MQ5Ni+RRGUz1AQnrH
         qRIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Q2hi1IpxLfbSJUDt8Y2NgKZ4qcrQhfnOaWfx/p0IRSZKD9Gtd
	Tj7EuZKD1G5vENa3GVzlpqw=
X-Google-Smtp-Source: ABdhPJynTdI2YGcFo0lAEu8pRzY1FlkIKqJ2wzPWS6iXeECwQbeIHdDyUPPIw6EcRLQZAcXyZ2hYDQ==
X-Received: by 2002:a67:8dc4:: with SMTP id p187mr1001440vsd.22.1603799608901;
        Tue, 27 Oct 2020 04:53:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dc17:: with SMTP id x23ls125059vsj.8.gmail; Tue, 27 Oct
 2020 04:53:28 -0700 (PDT)
X-Received: by 2002:a05:6102:2c1:: with SMTP id h1mr967347vsh.44.1603799608342;
        Tue, 27 Oct 2020 04:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603799608; cv=none;
        d=google.com; s=arc-20160816;
        b=UV0Qq9OBGz/eaByh9i2voAX7dV/93ZBWxg5h8xcJmPOL43wLwZ3hiDQFquE57zCh0R
         9AUL1blAmuNw07O8HhEquJryV9hhMIuTdpNPR5HeIej/BAI1t+JrvXZxNsYPT03gxRSc
         fXJrIo7/Lc1tq2MwyVf7UylzbdLlKm8DztxAJT/eu6P098v0+zzLu9R3UHaEBTZJmU28
         3eAY0VYHCm0mLzNW4XJB4mE1Lq7Ws7iC8tLmOsXX47jZKcj/0JIqmuu5sBYkJvSXgnJa
         6ZoN2E7pHqGIjcPTPB8y0IAlnbxqnmZ6oQQb+udOoI4TtM7VFLEV84Q3dE1dEAR/OTqS
         lOCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s+UBJg6LO9Rf1v1keW2mwB44PjQMVZlghePfQtTq54M=;
        b=AmhCTEZPowt0lyRXD3lEOSqaY7j/1v0HXqsgduHNL4MgDAR7+Q1C7Dppa19W/H1UHt
         OgnVkBjIVBJXnrpwL1LndvfABYhmTkKJ/hJJgXwtmfXrCUFeXfmFWfUrwzH1R6JxS8fB
         jS1lzFU7QfoAdtBo8EJNfkWk4iNFaBSu2ptxYPJZSugcJIyMYT5CNR3PW1FYPVPcqoNr
         7DcH28kw0tQTeDei+AtZINB5HBrvy7UlbO26iwvU8avcbL2UseafICN+YYDQS22ueqWV
         C/NRnYWCkxb/mMIQcp7R1pKYiAq8G+5aRyhERrQKxvJOvVgdyfNcO2JNmSrntDlpRKhX
         paWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iqYh9kcc;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id w123si59492vke.3.2020.10.27.04.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 04:53:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id r9so1173230ioo.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 04:53:28 -0700 (PDT)
X-Received: by 2002:a02:234a:: with SMTP id u71mr1925579jau.3.1603799607846;
 Tue, 27 Oct 2020 04:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <20201027100844.GA1514990@myrica> <CAMuHMdVkLXmJEiV-uwOqKnfGQZX65tMFMTjs0O8q5BJsAhCGzg@mail.gmail.com>
 <CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ@mail.gmail.com>
In-Reply-To: <CAMj1kXEdgOkH6VFa5_J6yqaJheToHUSM8jYXyGfA9JS5xwyLGQ@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 27 Oct 2020 17:23:16 +0530
Message-ID: <CA+G9fYsvr-Yjh4mxuVD8ZD+XpUSkh0475zpgHcf4LhV=b+P5Pg@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Ard Biesheuvel <ardb@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Kees Cook <keescook@chromium.org>, Anders Roxell <anders.roxell@linaro.org>
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Borislav Petkov <bp@suse.de>, 
	Peter Collingbourne <pcc@google.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iqYh9kcc;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 27 Oct 2020 at 17:00, Ard Biesheuvel <ardb@kernel.org> wrote:
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

 ld: Unexpected GOT/PLT entries detected!
 ld: Unexpected run-time procedure linkages detected!

The arm64 build error fixed by (I have tested defconfig)

[PATCH] soc: qcom: QCOM_RPMH fix build with modular QCOM_RPMH
https://lore.kernel.org/linux-arm-msm/20201027111422.4008114-1-anders.roxel=
l@linaro.org/
---

When building allmodconfig leading to the following link error with
CONFIG_QCOM_RPMH=3Dy and CONFIG_QCOM_COMMAND_DB=3Dm:

aarch64-linux-gnu-ld: drivers/clk/qcom/clk-rpmh.o: in function `clk_rpmh_pr=
obe':
  drivers/clk/qcom/clk-rpmh.c:474: undefined reference to `cmd_db_read_addr=
'
  drivers/clk/qcom/clk-rpmh.c:474:(.text+0x254): relocation truncated
to fit: R_AARCH64_CALL26 against undefined symbol `cmd_db_read_addr'

Fix this by adding a Kconfig depenency and forcing QCOM_RPMH to be a
module when QCOM_COMMAND_DB is a module. Also removing the dependency on
'ARCH_QCOM || COMPILE_TEST' since that is already a dependency for
QCOM_COMMAND_DB.

Fixes: 778279f4f5e4 ("soc: qcom: cmd-db: allow loading as a module")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/soc/qcom/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
index 9b4ae9c16ba7..3bdd1604f78f 100644
--- a/drivers/soc/qcom/Kconfig
+++ b/drivers/soc/qcom/Kconfig
@@ -109,7 +109,7 @@ config QCOM_RMTFS_MEM

 config QCOM_RPMH
  tristate "Qualcomm RPM-Hardened (RPMH) Communication"
- depends on ARCH_QCOM || COMPILE_TEST
+ depends on QCOM_COMMAND_DB
  help
   Support for communication with the hardened-RPM blocks in
   Qualcomm Technologies Inc (QTI) SoCs. RPMH communication uses an
--=20
2.28.0


- Naresh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BG9fYsvr-Yjh4mxuVD8ZD%2BXpUSkh0475zpgHcf4LhV%3Db%2BP5=
Pg%40mail.gmail.com.
