Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBVU7S76AKGQE3XOHRLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ACC28D1B0
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 18:03:35 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id c21sf41787pgi.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 09:03:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602605014; cv=pass;
        d=google.com; s=arc-20160816;
        b=1HNsmyz2L8xdjacF//Czxf/6M+AJaA4AzDxxeY2BqXJL97S8rwXSkGDLbLSxGjSug0
         L8hRA+T+DhxyohEHobs+Vo/tpZQHyLs/5a7RF5zIil63hcrdlIHFo/Qbt0qecCkIBkbt
         9Eavam73B/ZCQx89kVh80bBpr5kOL7Gb642siv8K6uY3B70Vq7ztmsigHqFhmLZrlL+L
         VHL0OO92ux3W3jTcYk84rrta42B2tCcveF+ZAtKMFQBt978wRziFYmLxkAutrm6SZmUf
         OyQ2+r08FBAVZnfvoM5B6G9gLzTfqckHfi0CD6yVkRNa5DxupyTs57eceERmYiyYCa/p
         bN0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=jbbXAbmq9g/N537x70+GrTvlSTPJKwJLEFAAZ9DqB4U=;
        b=0oY4aN7MSZaaI1aJy4ZytciL50OcAh8VZZ7PXcqRRxOBmJq2F/RkOdC7EJiVbh0wiS
         sBNPzVtvWWX4aSjWKtrBqHQIq1CPRHz6uM2NKnQ3TzzYQHWGwXtUZ+5l0AXHBAUYkPyA
         FPbUK+PVxD2cJqb2T6ZPitmt2B7j0W+3s+ZjniXAELpx8oI0hWs6l7I67RKpZyVd2dUN
         CBCAJmxGDJk4kRM6YFG2l4ei9qZuYsujy5VX1PH36xZldD+VVpF/dzC13ghXkZF+sk+1
         9M2uzawYsaAnawdmHq3fDXp/R2RLUPjB6LY1P/1MXSl/BDjxvf+WIrNU1+EnMxUqw3rl
         3eCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=j1iFKrZF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jbbXAbmq9g/N537x70+GrTvlSTPJKwJLEFAAZ9DqB4U=;
        b=Zlo4JkHThJR09IKccLcxyO9YSPMEJt0q0N4GhxAwWL9nWHHQWKOz9UcS7qmefDQS5l
         DTPgPGWRt8XhgYZx9F+20XtE7jCwSj341wzTDF/G9xZK24dpJjHpdBVF2VkkHlb/9mME
         Ov7eH28s+qn9b6TRNWMSk1Q2c2mcIMJx2rwVORQQUZBK29HQTaYZNgvue68o6fSBVuF/
         T4VSbhlDVO/mcsVNXKvNxpJk5zbajR8pqivs5Vl0Fnpiug6G3LLr5kiOZnxDQWV/u0rn
         Q5PBCB3UwNrMfJpEZz8W9DfsQsC/zmqL63MNlovlWUKo34O2LSORQuLkOs/TfJM7VxjJ
         xfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jbbXAbmq9g/N537x70+GrTvlSTPJKwJLEFAAZ9DqB4U=;
        b=nGZRwsAk44cRKiSVxAr1yuG8sos5wp6vSpRMoJDH+EPrH9dQOt+zlyzXnPEgCl4uCW
         HQ46pPkoA2xuYHK7YRWBbFDo3xUFEzGYsrBvAcI4O2xDMOlxrs8Hc3kaxK0fyfD56Cx6
         mzuB1n9K25v0e0vUbfXdJsMaC+670tCA0V61tKdWfjuMXczzNWiBw4ffKDvG0J6wdj9w
         MWOh2v4UxBTFbjwhlXHT0MpO0vRV3/IqR/fYbCTTc7XBTFdEzLmAdK4BQqPoZOxDqtPT
         MghxugX0YBElPNEgn6qjuBRg857yWFOY7tgPpYFPcP/06B7AXVlsXkFFQNLsh+WJd6Qn
         9jVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wZWfU7Ad5D2itLUiKD02FFpdTw7oR9tmVH/kEg5I+hpFyypIP
	yejmY3Ep7d284z2gQ3vnPXE=
X-Google-Smtp-Source: ABdhPJxBXaFrv3A5fbvS+jfOqLoDEdfnlErHSiM/gLNapgLucwrgP8HLEYTw/xUj/ea28aeMnRuMgQ==
X-Received: by 2002:a17:902:7fcd:b029:d3:f037:d9dc with SMTP id t13-20020a1709027fcdb02900d3f037d9dcmr129694plb.79.1602605014508;
        Tue, 13 Oct 2020 09:03:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b56:: with SMTP id a22ls6032275pgl.6.gmail; Tue, 13 Oct
 2020 09:03:33 -0700 (PDT)
X-Received: by 2002:a63:8c6:: with SMTP id 189mr171104pgi.207.1602605013893;
        Tue, 13 Oct 2020 09:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602605013; cv=none;
        d=google.com; s=arc-20160816;
        b=aO4tPpNfPAzWR0FcWKMeBdJL3d103kFicZltWNqu1zO5vhaUJbzrmEXSI6JJHkla4l
         cWaK6/zS4Ut5ABLNsmEIWQF1ccSsgQ3HsKYUJHhEJXIw3hup9Xa3DKzA2ndtRoU6XviW
         PjSG/GhWU+D3r5BzGW0nzdZU8BHahizBFtT40Q5RnZor7k98qAf2SAJezG/jHHWdZyxG
         iyclMoYJrYYQwEIF0DLEqzLy3yS7t/qr5SHcg+jVWZSiSW4JK/acAKmKm3Pomg101ZiK
         hyKd2MmdKteQgBBrZRT2tA0VqAAtdnTI4zgtdKQteyBJ+m6IU7TpINB+MwxzZ0VNT9jp
         RbHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=3Doy0JIMW8UlEO9WI984BiymwAAc3PcCowImi1wWrlc=;
        b=gSCdTbOMaqNeBx2MgBNb31RVzDcnw7t/gTVj+2sL6rXF2n54sxGoCfc6DlV8FJ19LZ
         K4kewhfUwfqvUpnr9Rp6JcIrJ7Re93GrGzFJbDTmtIxxfCzM1ZTTp7kNE7PZE5IfdRM6
         kMjVixjZMQ1uN+3WES5jo5vyYM0MMUM/VVIiupp9nlr4hiBnF+qYNZGp0UOK5DO96RRC
         rwhFiJ22iQsuV4dMuY+uSC+sY4Dhw2fqiIFLEp8v8b/VPQXIM6xrESuK+bznupq7mUDy
         i7rxur2wdCc2SyCWguDb2Wzsp986P5J3gklzLFsaPBWoYGNRAacRrO5hxQlzgo5Ywozn
         /wkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=j1iFKrZF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id ce17si22156pjb.3.2020.10.13.09.03.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 09:03:33 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 09DG2vjP012786
	for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 01:02:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 09DG2vjP012786
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id gm14so113824pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 09:02:57 -0700 (PDT)
X-Received: by 2002:a17:902:c3d4:b029:d3:df24:1619 with SMTP id
 j20-20020a170902c3d4b02900d3df241619mr159914plj.1.1602604976734; Tue, 13 Oct
 2020 09:02:56 -0700 (PDT)
MIME-Version: 1.0
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
 <20201012170631.1241502-3-ujjwalkumar0501@gmail.com> <alpine.DEB.2.21.2010122019410.17866@felia>
 <b4fdc7c5-8edf-3895-69fc-1bcf9efb5d4a@gmail.com> <53b7257e-b192-07da-9dd3-06497ce826f0@petrovitsch.priv.at>
In-Reply-To: <53b7257e-b192-07da-9dd3-06497ce826f0@petrovitsch.priv.at>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 14 Oct 2020 01:02:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNARRDz-+HqXtW6o7nowwprBSgKkhx7-Joe2=hjgLp4o+4A@mail.gmail.com>
Message-ID: <CAK7LNARRDz-+HqXtW6o7nowwprBSgKkhx7-Joe2=hjgLp4o+4A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: use interpreters to invoke scripts
To: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-ia64@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=j1iFKrZF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Oct 13, 2020 at 4:03 AM Bernd Petrovitsch
<bernd@petrovitsch.priv.at> wrote:
>
> Hi all!
>
> On 12/10/2020 18:42, Ujjwal Kumar wrote:
> > On 12/10/20 11:50 pm, Lukas Bulwahn wrote:
> >>
> >>
> >> On Mon, 12 Oct 2020, Ujjwal Kumar wrote:
> >>
> >>> We cannot rely on execute bits to be set on files in the repository.
> >>> The build script should use the explicit interpreter when invoking any
> >>> script from the repository.
> >>>
> >>> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
> >>> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
> >>>
> >>> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
> >>> Suggested-by: Kees Cook <keescook@chromium.org>
> >>> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> >>> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
> >>> ---
> >>>  Makefile                          | 4 ++--
> >>>  arch/arm64/kernel/vdso/Makefile   | 2 +-
> >>>  arch/arm64/kernel/vdso32/Makefile | 2 +-
> >>>  arch/ia64/Makefile                | 4 ++--
> >>>  arch/nds32/kernel/vdso/Makefile   | 2 +-
> >>>  scripts/Makefile.build            | 2 +-
> >>>  scripts/Makefile.package          | 4 ++--
> >>>  7 files changed, 10 insertions(+), 10 deletions(-)
> >>>
> >>> diff --git a/Makefile b/Makefile
> >>> index 0af7945caa61..df20e71dd7c8 100644
> >>> --- a/Makefile
> >>> +++ b/Makefile
> >>> @@ -1256,7 +1256,7 @@ include/generated/utsrelease.h: include/config/kernel.release FORCE
> >>>  PHONY += headerdep
> >>>  headerdep:
> >>>     $(Q)find $(srctree)/include/ -name '*.h' | xargs --max-args 1 \
> >>> -   $(srctree)/scripts/headerdep.pl -I$(srctree)/include
> >>> +   $(PERL) $(srctree)/scripts/headerdep.pl -I$(srctree)/include
> >>>
> >>>  # ---------------------------------------------------------------------------
> >>>  # Kernel headers
> >>> @@ -1312,7 +1312,7 @@ PHONY += kselftest-merge
> >>>  kselftest-merge:
> >>>     $(if $(wildcard $(objtree)/.config),, $(error No .config exists, config your kernel first!))
> >>>     $(Q)find $(srctree)/tools/testing/selftests -name config | \
> >>> -           xargs $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> >>> +           xargs $(CONFIG_SHELL) $(srctree)/scripts/kconfig/merge_config.sh -m $(objtree)/.config
> >>>     $(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
> >>>
> >>>  # ---------------------------------------------------------------------------
> >>> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> >>> index edccdb77c53e..fb07804b7fc1 100644
> >>> --- a/arch/arm64/kernel/vdso/Makefile
> >>> +++ b/arch/arm64/kernel/vdso/Makefile
> >>> @@ -65,7 +65,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
> >>>  # Generate VDSO offsets using helper script
> >>>  gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
> >>>  quiet_cmd_vdsosym = VDSOSYM $@
> >>> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> >>> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
> >>>
> >>>  include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
> >>>     $(call if_changed,vdsosym)
> >>> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> >>> index 7f96a1a9f68c..617c9ac58156 100644
> >>> --- a/arch/arm64/kernel/vdso32/Makefile
> >>> +++ b/arch/arm64/kernel/vdso32/Makefile
> >>> @@ -205,7 +205,7 @@ quiet_cmd_vdsomunge = MUNGE   $@
> >>>  gen-vdsosym := $(srctree)/$(src)/../vdso/gen_vdso_offsets.sh
> >>>  quiet_cmd_vdsosym = VDSOSYM $@
> >>>  # The AArch64 nm should be able to read an AArch32 binary
> >>> -      cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> >>> +      cmd_vdsosym = $(NM) $< | $(CONFIG_SHELL) $(gen-vdsosym) | LC_ALL=C sort > $@
> >>>
> >>>  # Install commands for the unstripped file
> >>>  quiet_cmd_vdso_install = INSTALL32 $@
> >>> diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
> >>> index 703b1c4f6d12..86d42a2d09cb 100644
> >>> --- a/arch/ia64/Makefile
> >>> +++ b/arch/ia64/Makefile
> >>> @@ -27,8 +27,8 @@ cflags-y  := -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
> >>>                -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
> >>>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
> >>>
> >>> -GAS_STATUS = $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >>> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> >>> +GAS_STATUS = $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >>> +KBUILD_CPPFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> >>
> >> Here is an instance of what Masahiro-san pointed out being wrong.
> >>
> >> Ujjwal, will you send a v3?
> >
> > Following is the quoted text from the reply mail from Masahiro
> >
> >>> -GAS_STATUS     = $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >>> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> >>> +GAS_STATUS     = $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
> >>> +KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
> >>
> >>
> >>
> >> These changes look wrong to me.
> >>
> >> $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
> >>
> >
> > From the above text, I understand as follows:
>
> Did you actually *test* that (expecially) these lines work
> afterwards as good as before?
>
> > That my proposed change:
> > $(shell $(src...)    ->  $($(CONFIG_SHELL) $(src...)
> >
> > is WRONG
>
> Yup, as it's in a Makefile and that's a Makefile construct.
>
> > and in the next line he suggested the required correction.
> > That being:
> > $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
>
> Such stuff should generally not be needed as the to-be-used
> shell can be set in Makefiles via a "SHELL = " assignment
> (defaulting to /bin/sh - what else;-).
> Flags for the shell can BTW set with ".SHELLFLAGS = ".


You are talking about a different thing.



Take the current code as an example:

$(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")


Here are two shell invocations.


[1]
The command
$(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)"
is run in /bin/sh because the default value of SHELL is /bin/sh.


[2]
The script, arch/ia64/scripts/check-gas, is run in /bin/sh
because the hash-bang (the first line of check-gas)
specifies #!/bin/sh




Bernd is talking about [1].

In contrast, this patch is addressing [2] because
Andrew Morton suggested to run scripts without relying
on the executable bit.
(and, after this patch, we run scripts without relying
on the hash-bang because we now specify the interpreter.)


Of course, [1] and [2] can be different.


I always want to use /bin/sh for [1],
so please do not use bash-extension inside $(shell  ...)


You have more choices for [2].

If arch/ia64/scripts/check-gas had been written with bash-extension,
the code would have been changed into:

$(shell $(BASH) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")


I hope this will be clearer.




> So please
> -) learn basic "Makefile" + "make" before brainlessly patching
>    a Makefile.
> -) actually testy your changes to make sure the patch didn't
>    broke anything
> -) and - last but not least - check if there isn't a shell
>    already set (and which).
>
> MfG,
>         Bernd
> --
> There is no cloud, just other people computers.
> -- https://static.fsf.org/nosvn/stickers/thereisnocloud.svg



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARRDz-%2BHqXtW6o7nowwprBSgKkhx7-Joe2%3DhjgLp4o%2B4A%40mail.gmail.com.
