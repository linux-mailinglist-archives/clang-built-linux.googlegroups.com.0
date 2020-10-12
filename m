Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB36LSL6AKGQEZFGGRYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D799628C00A
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 20:52:31 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id t3sf3193607wrq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 11:52:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602528751; cv=pass;
        d=google.com; s=arc-20160816;
        b=UOMrMMumw2nwITIm+ZvR7bMKjAssLwq+eIBTu6fxHPA48k92/T4usIZu2d+fMVMn5B
         ZoT7HY9VzNTzqWJaVj+OVQhkcA0QEc47+oKRBTCdE8nvRLfo0eKaQXIVZOVOcqJdMPAN
         eXlVz+xRJnK5koxlVVyXmnxPjJ5cC50hF5tPdap3B15JMLpR0jKuzV42LWNspEWVekg8
         GkZcyYWrUhb+OSzoa7/vElNb3+s+ouR6X5yDXbKOWtPpHiDUOdxRVFFyncCh56yVCC5t
         q9q6SBPQnil2SrekN3yeT+AiQm694cSVcLklTPTLVjJ1I1A04DFuQWbdcOWyQsi7eIwo
         vDIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=rcXmfpShWpEfkgHsZmgh+sqvclsI76o/FvzE8GRKiEc=;
        b=o7l+G+lel+RqBpz0mP6Zm04289vyEZ6SA/2yb2/6/xSSpUcogjXS8UIfv/76dXlCdS
         a9d7qk/pF+7/8uIqjXwQgZtlgSEjCEDqcS07HeyZY6wg49/DfT0shQX4ZUDtSVcDRdTL
         bPlkm1y6UY9MUneP8IAtmH4dDjlCwXSW5hb1VPGqf/AH+N+WnF0rZkTQ+Ve7jThjJChQ
         +upa5EjpE6yYInIqStEedScepxRc6qFcaAitwiNRFupDrcg1Ybu7DjMyzB5df64M2sh3
         XdGMv6/I0yDcukgJGqHSB7BWf7uaJNhIN7W4hWL4zT5Pd/KBWu6o+3ZOPb2gqzB9j7cN
         qjGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g3WHjRsx;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rcXmfpShWpEfkgHsZmgh+sqvclsI76o/FvzE8GRKiEc=;
        b=aURoxsZkTzJ9DvEHrVch+80+pjTdDetsRAZnIJJihoWbm9oUwWEJtAGY1pQXB8xFT3
         ksuu0Hc6gvOxv267TlrAEhIrg6PNR7mXHiAyx2axpWWWs59f7aw4OtxLP4LvDqwdpEZ2
         bsLhaAS2IhtYtyb6OMhNQim/fi4ZEQWb6sSV17SRJQvC2IA4kZDvKQ8Hgl7yHeRnIQE+
         bG5qLoxj2lb2okW/rjLNPUBCYtfDsKG1Mc+auOmhGA7M8NuSGmteTvj2GtB+S/I+Emnq
         3Sveu0x+q1pJNZRe4ESdFHZn2k00lSqjzb+KPTCerwz7BuQS/NoXuYukPnuYTVgVEv7q
         kNaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rcXmfpShWpEfkgHsZmgh+sqvclsI76o/FvzE8GRKiEc=;
        b=QEZIWESBgAhMOmyNM3gVjVO0HjKJ2DWKGIMSlAK5/EmH+Z9zPM08QxBV4NMZrPwG+L
         8FUhxj7tn7DmMQu3x60lJKa8vvitY+pK0OfW0DBROJmLX3IGIU+SGPZwR1hfrmKM7zmq
         N87BJP/5DQi7oXEnO5qQ8ORax1MmUqV+AP217MP6bopoT88UUeGOruOBDQokqlFUv622
         IeqvsYyIDjf2t98XT3tePoTph/WQ6HsUHi+8LMy2DHj7bbOzK6EF/zZoc6VqsYF1I8hj
         nDfkxECX0ReBYgtC0C8ZvnC1CbmXxwt7tTmStkVCz5Yg/d5p9O4gJOewlYBxXdP4H3bC
         rP2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rcXmfpShWpEfkgHsZmgh+sqvclsI76o/FvzE8GRKiEc=;
        b=SHN7iIogVlh3G/COH7uKaepRMtwB7vD+PwoCwMTA+h0AW5hcCz+IR7X9VrezLEaLqf
         2KWYChjNZ2vKrZEYNNHrOWYi/H4tdLS7mYwPOnXhqkUHbkVq56AMjdc+cDVYvnCGo8kn
         vv6jWWYGlYzf+M2/ci8G+ge8HHp0I8sPAQL/aQrteAcbRT/+7yvZpTQtyf8NtEreSyQv
         PMDB0iVyMcVPFfemE48ZmE3bhzCbuL6T7RadlaFlTlMjS0J3bSzUN995oq16INXc70Wa
         5JBFnQNtYGIh6dLTVAZZXiBOQYqeZmZWuc5zlYcZmoM1KMmEbug48CEX+j9Vi/rvWOqU
         KKyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531m+QBhm2C4MUmAA/mgwIaHk3MihPi7uMINEZmYiCAbhEIGiYJW
	LrBejjmfKsmbjaqAEjhbmnk=
X-Google-Smtp-Source: ABdhPJyAHgnQWC/ZreMkNCLFsnVRkBwI3aibxiJn+kiKMBcuTbooK638Fj7i1u5jTu5Jjz5es4kgww==
X-Received: by 2002:a1c:b707:: with SMTP id h7mr12692069wmf.105.1602528751554;
        Mon, 12 Oct 2020 11:52:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4986:: with SMTP id w128ls3366993wma.1.gmail; Mon, 12
 Oct 2020 11:52:30 -0700 (PDT)
X-Received: by 2002:a1c:48c3:: with SMTP id v186mr12888572wma.16.1602528750476;
        Mon, 12 Oct 2020 11:52:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602528750; cv=none;
        d=google.com; s=arc-20160816;
        b=xJqgrUaf8/WS/DgNunXdXLumiqbnfXI24tKAZmX1lvba8Mwo/XsxS+AXj3KH2jvmiW
         x66fvyQ+7q1ZyncWoExadeca8nLOydmhGKKqNp+jpCIKQqg9Z39kNB1PyZ4cKwcFWNHU
         jw0lI0og0A6QmBo/7A4Cs9jiLnxuCMLsugWmvBOaLm6inVnilcqQO2U//AQekWtE5VTI
         EfOGDkt/P0pJt7q+5GBHi6vtDi6L1nCL/pOLaYvnv44ejZrCT3xCusznBXyFxOM0BMxT
         3ehtVoCJexJj/j7MdwHzdmO5hKOhkMaWDRBL3wa0eOR6AqZ4MtbarvOeEqtaN5ApoLZo
         GFoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=Utz5fM0P2YU1R9Vxa7FixOsKNQgjeSpIPU8Rbs9qTf0=;
        b=HcgvJcJmEWRLypB/6qMgwBB4q8JOlr+XEZcYwWHAScfuj/sr0HSB+QxJKEREZIRbss
         E5dQ8MkXg/QpRQ14Tlc6idebAUfe8id6Q3e/EsrGeRQuCUfRqfIViHdHrL8GqUAMtGoq
         aEpuWkRyLpqiDhRdkw+88VwzwpAxrKWYzsrEEpQ9cVzGLO58qvdOOd8Ru4VpVBVj+FD9
         y4KfJwOkMt1pTxzdY0+RMi1r5diPu+B6zngoCNUPMnTpnaChccSYecP3w28BIyDcgy9Q
         pdTTySQe1rUk4qg8gmTdq4FMXhZMTWRLkex96DmjmgFuWLWvf1apwKSlkW7kW0hcmwq5
         gz2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g3WHjRsx;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id f144si473007wmf.0.2020.10.12.11.52.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 11:52:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id c22so24700292ejx.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 11:52:30 -0700 (PDT)
X-Received: by 2002:a17:907:366:: with SMTP id rs6mr29271827ejb.352.1602528750069;
        Mon, 12 Oct 2020 11:52:30 -0700 (PDT)
Received: from felia ([2001:16b8:2d57:fc00:a1bd:911e:26f6:597])
        by smtp.gmail.com with ESMTPSA id w1sm2707349ejv.82.2020.10.12.11.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 11:52:29 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 12 Oct 2020 20:52:28 +0200 (CEST)
X-X-Sender: lukas@felia
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Masahiro Yamada <masahiroy@kernel.org>, 
    Michal Marek <michal.lkml@markovi.net>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Kees Cook <keescook@chromium.org>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com, 
    linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2 2/2] kbuild: use interpreters to invoke scripts
In-Reply-To: <b4fdc7c5-8edf-3895-69fc-1bcf9efb5d4a@gmail.com>
Message-ID: <alpine.DEB.2.21.2010122050400.17866@felia>
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com> <20201012170631.1241502-3-ujjwalkumar0501@gmail.com> <alpine.DEB.2.21.2010122019410.17866@felia> <b4fdc7c5-8edf-3895-69fc-1bcf9efb5d4a@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g3WHjRsx;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Tue, 13 Oct 2020, Ujjwal Kumar wrote:

> On 12/10/20 11:50 pm, Lukas Bulwahn wrote:
> > 
> > 
> > On Mon, 12 Oct 2020, Ujjwal Kumar wrote:
> > 
> >> We cannot rely on execute bits to be set on files in the repository.
> >> The build script should use the explicit interpreter when invoking any
> >> script from the repository.
> >>
> >> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
> >> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
> >>
> >> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
> >> Suggested-by: Kees Cook <keescook@chromium.org>
> >> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> >> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
> >> ---
> >>  Makefile                          | 4 ++--
> >>  arch/arm64/kernel/vdso/Makefile   | 2 +-
> >>  arch/arm64/kernel/vdso32/Makefile | 2 +-
> >>  arch/ia64/Makefile                | 4 ++--
> >>  arch/nds32/kernel/vdso/Makefile   | 2 +-
> >>  scripts/Makefile.build            | 2 +-
> >>  scripts/Makefile.package          | 4 ++--
> >>  7 files changed, 10 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/Makefile b/Makefile
> >> index 0af7945caa61..df20e71dd7c8 100644
> >> --- a/Makefile
> >> +++ b/Makefile
> >> @@ -1256,7 +1256,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
> >>  PHONY += headerdep
> >>  headerdep:
> >>  	$(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
> >> -	$(srctree)/scripts/headerdep.pl -I$(srctree)/include
> >> +	$(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
> >>
> >>  # ---------------------------------------------------------------------------
> >>  # Kernel headers
> >> @@ -1312,7 +1312,7 @@ PHONY += kselftest-merge
> >>  kselftest-merge:
> >>  	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
> >>  	$(Q)find $(srctree)/tools/testing/selftests -name config | \
> >> -		xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> >> +		xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> >>  	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
> >>
> >>  # ---------------------------------------------------------------------------
> >> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> >> index edccdb77c53e..fb07804b7fc1 100644
> >> --- a/arch/arm64/kernel/vdso/Makefile
> >> +++ b/arch/arm64/kernel/vdso/Makefile
> >> @@ -65,7 +65,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
> >>  # Generate VDSO offsets using helper script
> >>  gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
> >>  quiet_cmd_vdsosym = VDSOSYM $@
> >> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> >> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
> >>
> >>  include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
> >>  	$(call if_changed,vdsosym)
> >> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> >> index 7f96a1a9f68c..617c9ac58156 100644
> >> --- a/arch/arm64/kernel/vdso32/Makefile
> >> +++ b/arch/arm64/kernel/vdso32/Makefile
> >> @@ -205,7 +205,7 @@ quiet_cmd_vdsomunge = MUNGE   $@
> >>  gen-vdsosym := $(srctree)/$(src)/../vdso/gen_vdso_offsets.sh
> >>  quiet_cmd_vdsosym = VDSOSYM $@
> >>  # The AArch64 nm should be able to read an AArch32 binary
> >> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> >> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
> >>
> >>  # Install commands for the unstripped file
> >>  quiet_cmd_vdso_install = INSTALL32 $@
> >> diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
> >> index 703b1c4f6d12..86d42a2d09cb 100644
> >> --- a/arch/ia64/Makefile
> >> +++ b/arch/ia64/Makefile
> >> @@ -27,8 +27,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
> >>  		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
> >>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
> >>
> >> -GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> >> +GAS_STATUS	= $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >> +KBUILD_CPPFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> > 
> > Here is an instance of what Masahiro-san pointed out being wrong.
> > 
> > Ujjwal, will you send a v3?
> 
> Following is the quoted text from the reply mail from Masahiro
> 
> >> -GAS_STATUS     = $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> >> +GAS_STATUS     = $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >> +KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> > 
> > 
> > 
> > These changes look wrong to me.
> > 
> > $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
> > 
> 
> From the above text, I understand as follows:
> 
> That my proposed change:
> $(shell $(src...)    ->  $($(CONFIG_SHELL) $(src...)
> 
> is WRONG
> 
> and in the next line he suggested the required correction.
> That being:
> $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
> 
> Which is in v2 of the patch series.
> 
> Lukas, please correct me if I'm wrong so that I can work on v3
> if required.
>

Sorry, my memory tricked me; I got it confused. Your patch looks good.
 
> Also, Nathan reviewed both the patches in v1 of this series. So,
> should I be the one who adds his tag in next iterations?
>

Masahiro-san will probably just add them when he picks the patches.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010122050400.17866%40felia.
