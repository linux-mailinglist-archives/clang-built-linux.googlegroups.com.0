Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMFHT6BAMGQE7LQ3QOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id DD006332F74
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 20:59:45 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id m19sf7100679oiw.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 11:59:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615319985; cv=pass;
        d=google.com; s=arc-20160816;
        b=GBp1MSs+gyC4bTzBZcKL/CYRGOgk5HXHWL7ZHmoRCxFMLdI/CrNBCiMQ7cD13pBLu9
         /zEKl9XKK49dFLEapOF11qQLvLtm3mVMO7OkJGk8T57By7i+TZnod/htnjJY0aQGe4Xy
         wrSSFyYcfh0r/bKqoITylZkMue2q/jK8HpJ4Kagny/XzwzBbe0I+U1FfRKNvVAs+nnm8
         AprLJRS8SKPVGQyocLLt9DarVRpbJ3PSKvayVhdSFH87P1XmZN5Iopr2stIDYtBYyK0J
         +vgcYqBk8lRoIYleEelNN5FD6W3nAW5uMOAaaw6/JyVSoKaEtXC3setbG49veEaH5b2A
         /bpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=yvcPUmTK3ylgr0/efBLXHHzDg8/NC5+892EAGMHWark=;
        b=prQdrtls53uzNVLMac4KnHzw4KJ89oz0C8GToFXrtBq5DFkZ5dXmDeTJb9lqWDs1Ga
         fM8mJqLBC/Dfs77iAicAye8ay7QJLjKir3DFt44cFB5AFwpFipIWFn9UexgUKwWnDShA
         GipCi2zgLww6LrsrFTUW/3hQ1pgPcYbvMPbtdDGpYZmX2fyelsMT9alq/hplNzTvw8RW
         NMSEoYK9BuWpKSowa2bFzE9Es+3FnTKbWvxRLTkBU/n/S5gImbEQfYw2Z8Ibi7k+SZAR
         D0Dazju2J6c3XyseEdVf+0+InvhlNXNdJk7aWy28FlzzAHrOxVx4i2HMtYPZiXpUGB2/
         2nNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="UKa4+/NT";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yvcPUmTK3ylgr0/efBLXHHzDg8/NC5+892EAGMHWark=;
        b=euuKFvYjwUK5QIxST06cSMcpdKmguwETzL/gRzYzBE7pd12OGi7KdDW6Ri7SNjCJiv
         mItDoX0h2NJ8Dd1jxFgVNlXLHEpr17wwUkpLDM1sPvL737SL1qEbJKo8MtRgHKC0KJP6
         2Wl6bpfNwvJEj0h8r68cfTb6W2DY2jdYpUtNYnXgp0nzoV4ux76Y2Lypx5ZsKZJBbept
         gMzBpRjOnmPtMEH4t43YuoE50v5spWHsmYt7OgEYzSbfijkM+ZpnRj+9jPiIWtR01yQj
         M8CZz50ISUdxEVc4SyT3YATEF5Z2VurNrnic+ZvhQMYfCtp41xk2k44E4hBDRx0BWlkU
         VkmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvcPUmTK3ylgr0/efBLXHHzDg8/NC5+892EAGMHWark=;
        b=ChUE7kSgNY7wvCzty3nvX3Rrwx87zLyTtFSPG6oQMk4VMPxgh3n1dyZMqtbOVSXc5Y
         xC7N+1WAJXoZ0QTV7iknCpZRqM4MkauBYpIBhs6W8p9E+h1Dd9aevMppxv3ZHu2xsmzl
         AwFthEO2u0cOeID1AvgskALswe4ST3JRW0mClNLfzRQfIH3XtNeCoCC+h8VFnbU2tVpl
         DEJ1sb1X/SpyzNBMdpDsdM2Py3VMtXB1ZhDgyHv+z/liyQ9gO/0QGClBAds7or8hBE0I
         CFFCO6XfeUfyd661996BSO/O+555v6mBkvDnv4hmsCtCu8D733p7DpRmWWlo44+egsJR
         Nz/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532soZASGdpGAA5ENB5EISJqTLzFAg4NYW7zXtPsnR2ZrvoWADit
	SaY5/FinPv6GD+e7FrWf0bA=
X-Google-Smtp-Source: ABdhPJwzW79SH5uao2M3Jfxdm6xz3PyrXZYS7wFS+9WbGCu114YufoVyGxX1/FqNJO3rccNvWbYQYg==
X-Received: by 2002:a05:6830:4b0:: with SMTP id l16mr13154414otd.96.1615319984891;
        Tue, 09 Mar 2021 11:59:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10d0:: with SMTP id s16ls5609751ois.7.gmail; Tue,
 09 Mar 2021 11:59:44 -0800 (PST)
X-Received: by 2002:aca:4888:: with SMTP id v130mr4187322oia.3.1615319984538;
        Tue, 09 Mar 2021 11:59:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615319984; cv=none;
        d=google.com; s=arc-20160816;
        b=Bij1uOHdKYWS71XYaHAkp7VmWZKR35W5kA/FWY4FMqxbK6+akXK4ejgmUvwFcaxmhl
         PQwP2BasURwndiQ2Y9QtXzzSVuY1gVD6clMXDw9tlDBMb4ylRI5S2twBTnWR09N3h8mM
         ghwb0weHhVPWejWv71I4M1fJzj5N5WcDpnt7rZYnzhM7fZZVRHPR9ij1Uy7rjU9Hp6Me
         +RFUP7HA+9L3vAywIV62Z5tByTp8FErNiH4/rOq2DYco8OkKvLblC3xDZRi7Ocjqau0a
         I8DLbCQ4JHS5DpWVSQztAV2BUhdZsQ5QDI2ac1JFV+vOlLapjHHVVjmocNZ1qOhvhvGH
         Yzeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=wou3lyafM4ONQKR6kN74QI87FmicL9SFVho3ygkDglM=;
        b=GaBdVG5+5Cw3xTjX7Kfh0Lhlf3hlOtBRJibGtB9dFFAkdgNIoFDDuKh8Uh3R6xv7hH
         VajJ5lxpPojAZZCGzM8PI9Ch3vMfTHFA2wwfcyo2hXvv9KYfWyBIzofQstcBBVYSI/w2
         7OhNX1nLkakE0isZ8skdJdOV++AHEyXeLOemJuDJmEEVbANnFO3coyOv7/1WsLbN5ln2
         NdWkJeuRKZaiMY/b/9jYZa10JZswknjCnHycqPOqNRUvV872bIb5t86pQ3UUBjxvIfdW
         j97Bfsme/x4ijYrKL59/81sni19DPPUH4R5YsJp6XUdQx7xvsZd65B1ZcLPPGx81Ldk3
         Xo9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="UKa4+/NT";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id q10si1256419oon.2.2021.03.09.11.59.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 11:59:44 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 129JxH1r023409
	for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 04:59:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 129JxH1r023409
X-Nifty-SrcIP: [209.85.216.46]
Received: by mail-pj1-f46.google.com with SMTP id kx1so1452357pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 11:59:17 -0800 (PST)
X-Received: by 2002:a17:90a:dc08:: with SMTP id i8mr6060446pjv.153.1615319956989;
 Tue, 09 Mar 2021 11:59:16 -0800 (PST)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210302210646.3044738-2-nathan@kernel.org>
 <CAK7LNARd7pM7SCKJOS=_ZDE+-Q_buDOfw_u0vsfof6G1FWXvOQ@mail.gmail.com>
In-Reply-To: <CAK7LNARd7pM7SCKJOS=_ZDE+-Q_buDOfw_u0vsfof6G1FWXvOQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 10 Mar 2021 04:58:39 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ0tdK+BEzs=39A4XbCXjAsbyyFp6fgXfhjP+5v_Nsddw@mail.gmail.com>
Message-ID: <CAK7LNAQ0tdK+BEzs=39A4XbCXjAsbyyFp6fgXfhjP+5v_Nsddw@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: Only specify '--prefix=' when building with
 clang + GNU as
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="UKa4+/NT";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Mar 10, 2021 at 4:55 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Mar 3, 2021 at 6:07 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > When building with LLVM_IAS=1, there is no point to specifying
> > '--prefix=' because that flag is only used to find the cross assembler,
> > which is clang itself when building with LLVM_IAS=1. All of the other
> > tools are invoked directly from PATH or a full path specified via the
> > command line, which does not depend on the value of '--prefix='.
> >
> > Sharing commands to reproduce issues becomes a little bit easier without
> > a '--prefix=' value because that '--prefix=' value is specific to a
> > user's machine due to it being an absolute path.
> >
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
>
> I was tricked by a couple of Reviewed-by/Tested-by tags.
>
> With this patch applied, the code looks as follows:
>
>
> ifneq ($(CROSS_COMPILE),)
> CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> ifneq ($(LLVM_IAS),1)
> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> CLANG_FLAGS += -no-integrated-as
> endif
> endif
>
>
> For the native build (empty CROSS_COMPILE),
> you cannot add -no-integrated-as.
>
>
> I dropped this from my tree.
>
>
>
> Is the correct code as follows?
>
>
> ifneq ($(LLVM_IAS),1)
> CLANG_FLAGS += -no-integrated-as
> ifneq ($(CROSS_COMPILE),)
> CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> endif
> endif
>
>
>
>


If you send v2, can you include comments from Fangrui Song?



    Fangrui Song:
      clang can spawn GNU as (if -f?no-integrated-as is specified) and GNU
      objcopy (-f?no-integrated-as and -gsplit-dwarf and -g[123]).
      objcopy is only used for GNU as assembled object files.
      With integrated assembler, the object file streamer creates .o and
      .dwo simultaneously.
      With GNU as, two objcopy commands are needed to extract .debug*.dwo to
      .dwo files && another command to remove .debug*.dwo sections.



I did not know the objtool part, and I think it is worth recording.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ0tdK%2BBEzs%3D39A4XbCXjAsbyyFp6fgXfhjP%2B5v_Nsddw%40mail.gmail.com.
