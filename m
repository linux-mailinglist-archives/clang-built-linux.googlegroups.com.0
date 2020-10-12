Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBK6HSL6AKGQEHFIFJ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 581AB28BFEC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 20:42:53 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id c21sf12957989pgi.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 11:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602528171; cv=pass;
        d=google.com; s=arc-20160816;
        b=hbW7JKEZ8Ht4H/fvsK6U8E4HtWaGXkIZGEVDXeeoNWQr1pzWzzWciO/CfE2k4cHvd7
         nS0zV5MmyHOI1SL1MAb64DOpDnecEE2gVtB/OFJ17j7HQMfzMSWY8hka24D7dpWgrA46
         r35kUadvcOY2vKKDRijQ7Kofe2AiVDGXlZaT47/+Bc9gmIiS26HH+yDlDHXCdXPQaIrY
         c+HfFlJUJHAAs1RqycWuQ7EqcjG3bURUUPfOKUIG8ipg4SUrp7pTfXQQB5y7l7gMBKwb
         sWYsLTTh4THeE73PAXbyoYgmD3yxUQQbb84T7767fTPv3mZEmES2vc7tCwFaumNeZTaU
         Nxbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=R52uoCOnj2brQmZYrXz0KO8l0yQghNAE1Nugr3O5ooU=;
        b=NF+wEp3HbOqnTjAd2zcqzANtTR8sEqntgZE0Mlf/gXPNMUqT9Jdbi70j8EXrB7qS1x
         W8WRxEnNdw2uisFFYeHPHvAwnq2455Zb7oepQKKW7YD7i0oK+b+qO4De0LNxa4UcP4Wv
         IybwgFRvphu7F40SocyRLpvzLsci5zM5dKjGyuLUyYyJ9yjsR2JekgC9sdNLa4fM7UB4
         2BPeVBpslDvF+9LxvQUdc47sLg3Ki06lKco61RW+0WUvpim4ePLQZ7Ymx8dN5W7Sa1Nl
         gM2uSrpnurjBSEOSECUMgrWeIP6KrM4NcAl1rMdaEpdpf5PK/di7L+5OrY33HxfjYQiU
         gZoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ie6zixgX;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R52uoCOnj2brQmZYrXz0KO8l0yQghNAE1Nugr3O5ooU=;
        b=W6VHJS5gsy3MIK7ITtnObnvCT4qVblDXd29TPxCOCeovdInBPdje7aKkZo/nZlEWK6
         N9qGFW7+yRU+OTgAUhqk2bTPnQ13X1YJXK7I6p1tmUJN2r4fvkC2egpBCXkxaIdtw5ya
         cxYfOJ1NKb4dvsPjKmtU0uvhxe/9O2DFgOIqoKeHfyz9qDmlBD6UyxW/Rj2/bqHZpzvS
         xv0SkYwwIzMf/hktscstKomuzP331tU7V8/P6ba2nTWtMgHTosIUKPdW6lN4+9fwKRBL
         fBkikYHnB0fsH1rP1MURBMi38v6ax93xUIzihNaSmsBalcjVTKwb8iGnAOtNEDKEp6Gf
         E+EQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R52uoCOnj2brQmZYrXz0KO8l0yQghNAE1Nugr3O5ooU=;
        b=TE3los+xcXuvUvo98OQrrufgOYEW68K9/dB9MBnHxwRvfoWw6eskKvzCpQ7tpkOKpP
         ye56IGcHZKWAWB98YnIfQ/cF74Hzne1XuHcjhLWRWz2vbqjO2X4bBZldWcgnKX93IJ24
         U2JtsV0lkv/6GwHiU/Mw86eTb72lbkludKBlqJd6hoOBGS5tOj4SfGfGHO9JTzGCgU1Y
         jgVj6vIuWSMJDeTtRcRwNGBsTyo+DPHGyE/4KeX3KqUwgTRRq3wAINi4e7V2OwZ1z41m
         SIReQmCswy8PVhzWi/Ay3FJPJNrI3N/z3kCE0Y1CLDibvuZqOO7UN77x44SPT5SRNBTY
         kQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R52uoCOnj2brQmZYrXz0KO8l0yQghNAE1Nugr3O5ooU=;
        b=JE8uofOaQiBHTjzpKGzjwS0O80EnuT3il7vglj+9wzGVnOoKJ7anJPd+GWMxPNn9Bw
         CSJfHLMQ5Jd9ukevZueFODH5p2LXe6tNR0HO7Uj3fnrRDBWtpEIcFmrPMN+paaVi9Lv5
         dq0lO0SMOZYLbwkdr+CXWyceDgHhBt0xZvBEJ14JMneA597kkvGtXDqYz1oQSMYhY72z
         iKyKJ4D5pio2+Eh5J2VA+WJ9TVglcR0JaNqCuEjiF6J4PXmyD6a4hojsE6SXoS69sjvU
         +5lcIf+QUMZt6etHPcW/8ch+TzG4xyomr51UUrfs/QXUZRbHtqr4XdZVO/SLJJlQC5Ez
         tWLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jyPlujyFU1/gJZ31NSSZz6uD3tt3ib8fasl+6e7GsUZudlva9
	hNbLf6wtJbXgQIJDEppllAA=
X-Google-Smtp-Source: ABdhPJzNexTaR5Z6xC6/bo2BO2J6NSIDoBAcU7lNDJrhLvhhD0pk9MUqyWziygj4sh8DR23aTc81Bw==
X-Received: by 2002:a17:90b:4749:: with SMTP id ka9mr21813901pjb.197.1602528171434;
        Mon, 12 Oct 2020 11:42:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls9851832pjr.2.gmail; Mon, 12
 Oct 2020 11:42:51 -0700 (PDT)
X-Received: by 2002:a17:902:6908:b029:d3:cb24:b535 with SMTP id j8-20020a1709026908b02900d3cb24b535mr25864220plk.7.1602528170896;
        Mon, 12 Oct 2020 11:42:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602528170; cv=none;
        d=google.com; s=arc-20160816;
        b=x3CQ3MKRJxB9iLUTLQO5gfmnzsdIGi+WPZWalS2GaS8RL3DgskagVo5dO0y2OROODH
         DpL6nQj2kB4unnwMCLDkqN69qqskTQZ5v0A72KoFJCXjmVfXJ62eJqv7ArSLy/TRe5Vh
         bs2iOzEHZmyNudF389LTSpyMO54u5bEskUC8QH4wpIJagB6bpn4MTllIweLjGQc2w6Hn
         +zQvzAQdTZdiFZZjuTurzy/GR5VVpaoR1VMCp8j3mqkUEa9u3VcECy6MXZwR4PiRCfAn
         Io+/47hBHY/sa2Pi8CNFDjSnwWVkA+BaregN4BBNPfFKGGpinXQ+knqt5WXk05eTBCqF
         irYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=c68FH0ayGziDihZ9IYbZBNMjx/y2IsXlW9Ldybbm4jU=;
        b=jCFucGdqcGa2V3lsN0ObaiFAkjDzyC5gQgdGnOmk/02fWQpLZDeXxoolEjY9IOu08Y
         +COC6pv/CoGUBlsn+NS/Cg6/LPfONW1+URmF4LR/GA1saoQfD53O9XI9i7xs5aJRnimr
         Z63wOYsGS5AhSmJ/zBfgPQ0H3IvTR2sJ+7hEvIZr2rIuMOr9QbOhXwfiEFX+d7YYjj4I
         zGRXrTw7RrLoW3DxQXm966v9PYAtyUmwETnXLY8ZdeaS33N3L1ABfj1do5F+B0G85DzV
         gRfG7AqqmKWsdEyhqgN5AKXqlEt759z4YkVgNc6+hLB0860PvAtFJ89aY/ixvR7ukjrr
         wN1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ie6zixgX;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j3si444463plk.0.2020.10.12.11.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 11:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id g29so15227766pgl.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 11:42:50 -0700 (PDT)
X-Received: by 2002:a17:90a:b64:: with SMTP id 91mr21130861pjq.93.1602528170431;
        Mon, 12 Oct 2020 11:42:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id f1sm19566915pfe.145.2020.10.12.11.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 11:42:49 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] kbuild: use interpreters to invoke scripts
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
 <20201012170631.1241502-3-ujjwalkumar0501@gmail.com>
 <alpine.DEB.2.21.2010122019410.17866@felia>
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Message-ID: <b4fdc7c5-8edf-3895-69fc-1bcf9efb5d4a@gmail.com>
Date: Tue, 13 Oct 2020 00:12:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2010122019410.17866@felia>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ie6zixgX;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 12/10/20 11:50 pm, Lukas Bulwahn wrote:
> 
> 
> On Mon, 12 Oct 2020, Ujjwal Kumar wrote:
> 
>> We cannot rely on execute bits to be set on files in the repository.
>> The build script should use the explicit interpreter when invoking any
>> script from the repository.
>>
>> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
>> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
>>
>> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
>> Suggested-by: Kees Cook <keescook@chromium.org>
>> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
>> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
>> ---
>>  Makefile                          | 4 ++--
>>  arch/arm64/kernel/vdso/Makefile   | 2 +-
>>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>>  arch/ia64/Makefile                | 4 ++--
>>  arch/nds32/kernel/vdso/Makefile   | 2 +-
>>  scripts/Makefile.build            | 2 +-
>>  scripts/Makefile.package          | 4 ++--
>>  7 files changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 0af7945caa61..df20e71dd7c8 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -1256,7 +1256,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
>>  PHONY += headerdep
>>  headerdep:
>>  	$(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
>> -	$(srctree)/scripts/headerdep.pl -I$(srctree)/include
>> +	$(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
>>
>>  # ---------------------------------------------------------------------------
>>  # Kernel headers
>> @@ -1312,7 +1312,7 @@ PHONY += kselftest-merge
>>  kselftest-merge:
>>  	$(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
>>  	$(Q)find $(srctree)/tools/testing/selftests -name config | \
>> -		xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
>> +		xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
>>  	$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
>>
>>  # ---------------------------------------------------------------------------
>> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
>> index edccdb77c53e..fb07804b7fc1 100644
>> --- a/arch/arm64/kernel/vdso/Makefile
>> +++ b/arch/arm64/kernel/vdso/Makefile
>> @@ -65,7 +65,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>>  # Generate VDSO offsets using helper script
>>  gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
>>  quiet_cmd_vdsosym = VDSOSYM $@
>> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
>> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
>>
>>  include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
>>  	$(call if_changed,vdsosym)
>> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
>> index 7f96a1a9f68c..617c9ac58156 100644
>> --- a/arch/arm64/kernel/vdso32/Makefile
>> +++ b/arch/arm64/kernel/vdso32/Makefile
>> @@ -205,7 +205,7 @@ quiet_cmd_vdsomunge = MUNGE   $@
>>  gen-vdsosym := $(srctree)/$(src)/../vdso/gen_vdso_offsets.sh
>>  quiet_cmd_vdsosym = VDSOSYM $@
>>  # The AArch64 nm should be able to read an AArch32 binary
>> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
>> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
>>
>>  # Install commands for the unstripped file
>>  quiet_cmd_vdso_install = INSTALL32 $@
>> diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
>> index 703b1c4f6d12..86d42a2d09cb 100644
>> --- a/arch/ia64/Makefile
>> +++ b/arch/ia64/Makefile
>> @@ -27,8 +27,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
>>  		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
>>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
>>
>> -GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>> +GAS_STATUS	= $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>> +KBUILD_CPPFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> 
> Here is an instance of what Masahiro-san pointed out being wrong.
> 
> Ujjwal, will you send a v3?

Following is the quoted text from the reply mail from Masahiro

>> -GAS_STATUS     = $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>> +GAS_STATUS     = $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>> +KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> 
> 
> 
> These changes look wrong to me.
> 
> $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
> 

From the above text, I understand as follows:

That my proposed change:
$(shell $(src...)    ->  $($(CONFIG_SHELL) $(src...)

is WRONG

and in the next line he suggested the required correction.
That being:
$($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)

Which is in v2 of the patch series.

Lukas, please correct me if I'm wrong so that I can work on v3
if required.

Also, Nathan reviewed both the patches in v1 of this series. So,
should I be the one who adds his tag in next iterations?


Thanks
Ujjwal Kumar

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b4fdc7c5-8edf-3895-69fc-1bcf9efb5d4a%40gmail.com.
