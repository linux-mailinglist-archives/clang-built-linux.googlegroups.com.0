Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBF6ARLWAKGQE6BMG3CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FE8B6EC2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 23:22:32 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id l21sf642794otr.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 14:22:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568841751; cv=pass;
        d=google.com; s=arc-20160816;
        b=eCXF3bS7Li+0Yv0/mswIkMicuGAubd+LyeJrS5UPaN/UbzcoO5Mnw7aqZVt1g6+1td
         ZfctaKobfu3AKqkikuAtrEw+iazbFuOwZATqpq8/HIhk+zFJW6Qda+Caa1UQTDnqY1z8
         MclfK2mTU9WiNQihbAMLQyhDM84vIBrwQ/fJHKbPef1xB20VyqDRAl6MvZ/Nk4nkcUzg
         8f7kB+Z1grsRzVyTeQH6faRPajYn5+DyfiPr48XJpABZTKTNqgf53ahHIppF67fTl2+x
         1UdHJDRCb6QY3kF3DLK6uR93ju0po0xgKqWdCNpRdC37/yJ0xOkZiXzaYs9+T1ncqlD4
         2oRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=OoMCaY3BqpQM/5uuCnsuY3xswQ42HHYsumVo4JjifAs=;
        b=DqprdVqqI5zhoodSoZ75rp4Qo0zxw6qmhGw6qFjOdiXgwkhuPFlrFn6RHkb83+GZ7E
         l431w+COvZDPtLIX2+A3CJ1ueVJC3wxuc3u3ufdneIr6976fkQ2qV1VjMECyKUdwPf/i
         JKwzWF0z7ieeGVczjQHHFg3vEKsBZN3LSFRWo0WFZFZpIIF4d3fHNx7EQT5K31Dr/tCz
         R0yMxJ8Gn6aoO61aVjS0HmyeDXkSD3+WswUrTQz+cWomQ7WLGqCyOsZEHeFjD29+9cb0
         qfG6zbcuDJ/W81YmbHaXqEmcj3rByu6WkLtXaFeHRH5gavNmdFeiPykhPFCpLTWCWIDj
         aOwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RE+8BfDR;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoMCaY3BqpQM/5uuCnsuY3xswQ42HHYsumVo4JjifAs=;
        b=rPuijDzgmHjUbs5P5dVvEux0mnxfMreOmbquzBZKhN/DDaa5PXdift2dNjk99Px0dQ
         DTvztPjcxPhaed+A2Qni6+JgFYHpu0xg2qqQ09M0TAoT7XSrfqKAA8pBH+Jfh5nOYJG4
         WRvGfCeYUeXuVT8PUe60TM0AJjo1uj5ICK6tbJuwmsh1pbnc0AJrSjEiPuqyYQrTSVMU
         ryyPyv+1hKj+SljtbpQmxxZ/v+6AxAUlSKgVk8p98cvDcZkMVTkAlQqkSnX8qTqthah4
         GXVm0cPgXqmt1iuUm83J80doqe2tbwA/gY3pOqHELVp66pxdRk7FplGx8RsmrxZ/+fWf
         O1Ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoMCaY3BqpQM/5uuCnsuY3xswQ42HHYsumVo4JjifAs=;
        b=TP6boQ2P2VLEBc4ETLh9zIfBFOMPtrzco+bwWunKYq0LvQhAMBH4X3Dxgj/lWO1t7r
         5WNv08Gyi5DUjRdqFMLHmBGEzhTLO6Vb45tIe1Q2tVV2vn91W5p2kh+Yg3+283Xvbf3a
         emtZqjJ7rR2AvPfF/VQTlMOl9rQnhm/XTWRT5Blg1f2By/jkr3ZETqm56aAUpewp+1D6
         2j0IU8C8H3/AkIs7wIdDL2MFrBA+Qz51ZvjkWe63xU2voYITchcDGI0uZdIbnWjXGPP/
         HCBI/vNjacxHRnqT+kO4cL5yO4WJJcg/CJmFiQTgPkzmhfvyzblfp+DJaz9a2gmO3a9U
         QhfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoMCaY3BqpQM/5uuCnsuY3xswQ42HHYsumVo4JjifAs=;
        b=i8QXGHqlRIgUkqWMGQu1gSQ2DRyILnNxAzdC8yKBW2PDXNKC6Y0hXNjngFA2HIoa5i
         ckQyYXfJSH06OLg/simrU6uXC+SIBrxupf5pa9gFqAo4pMk+jGdChvv7duZKCLi9j4Xy
         Le81SQR73PrVh0drTV50JNFjlynNb/EEz55PkPVlz7TZXPSi2ts0YqDZPAJLLbrlhCgr
         /bZZR4YkGCiRpnoqHxOawVE2Yi1a1snTi9dIyAi5lxY4+B/3tXgG15obVjGBIAnyB7TC
         tu2ZalX5oe99VAO0VDwQqntPniQgkTDx4WSeLE1pnCV1GEgAY9iWwjjQtDP0Vl1JGFxV
         IFKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWV6sBjKDMFffbB3xbn6kPxVVt7QFYBcuHsGM783ZNigdCHC1Vr
	/9izAlbniRrqo6wLRuyD+A0=
X-Google-Smtp-Source: APXvYqymlLhBtf31IV/3DGwdRvhFUv6+UxAphit95RGWEwhVwVWDB2MJC5lDi9NaspsL8YUkhgcHKQ==
X-Received: by 2002:a05:6830:1e05:: with SMTP id s5mr4250076otr.173.1568841751430;
        Wed, 18 Sep 2019 14:22:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls323703otx.9.gmail; Wed, 18 Sep
 2019 14:22:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1d9:: with SMTP id r25mr4870796ota.48.1568841751151;
        Wed, 18 Sep 2019 14:22:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568841751; cv=none;
        d=google.com; s=arc-20160816;
        b=wbGiPNZpCEQe7FGEuKbW9hyIjui3ge9w9NA+39VBO+4nIdcHQUN6IykfvBfsAJEMPw
         uZuherZnmAR/ih1Z5sQfDrqxzd/qt2TAyceyFAtPtsScCFeA9iLdMEC2MH81WDqf7pmV
         CMaWQsTvTLPedv8ZQeidagHPk/EM36gyw4FsEgh6ERQ68k6DAkWEl+3OXmHql9Q/VlQ2
         UQ1OzCaBbcEyc91ctCJZEsy2oyC78yQKvp2uiCjCgHb2dArMss9SCTCVQgAVB5m1ghMp
         fbeYBG3wXPh3iTn274w/+bRcTvbY5etbE7sY+oZYzRTzTIHWV07aN82tGGwRCXRwVRaJ
         FkVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qb2A3C5wATz4Nf57ckt7sqoju+5mQuN9qsWAH5MpuUY=;
        b=kYquudOzNG58ZfBz0Met5tNgrAlGQNwH1zLGzXIfsEdrvXiBjskd0IntLdyStxQMhD
         hN1tDQEki7TjnP4KMaiC1K60GPZ1q8OZT3iD1MaM4Jo5CSIXdRHGHY1AXb3HciiDx8o8
         ocEn5X8psNlbFVMdKWXLZ8YT9bdjujjw+f02u7GnULYmaSjq0OLIq0XnQuT2514vdNoV
         CkQu+NBK1yNaJBErz5aZYCl6Vy4eVjmfbYzZY3LEHecnYqZWuCiOyaM7cJ3yPkMz040q
         Jdw8jCPYu8cAyXtNr6v4gcf3TQn+AtXd/fjEhArbc12rAwYbmvqWExMEYE4Z1w2SndlL
         qeFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RE+8BfDR;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id m4si862091otk.1.2019.09.18.14.22.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 14:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id c3so1519771qtv.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 14:22:31 -0700 (PDT)
X-Received: by 2002:ac8:4658:: with SMTP id f24mr5936081qto.93.1568841750692;
 Wed, 18 Sep 2019 14:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-8-ivan.khoronzhuk@linaro.org> <CAEf4Bzaidog3n0YP6F5dL2rCrHtKCOBXS0as7usymk8Twdro4w@mail.gmail.com>
 <20190918101216.GA2908@khorivan>
In-Reply-To: <20190918101216.GA2908@khorivan>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 18 Sep 2019 14:22:19 -0700
Message-ID: <CAEf4BzZt0DnjU3Fw7TfiqqyZDOAX0mcKWasY4zWG3EcYyDzHxw@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 07/14] samples: bpf: add makefile.target for
 separate CC target build
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RE+8BfDR;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Sep 18, 2019 at 3:12 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> On Tue, Sep 17, 2019 at 04:19:40PM -0700, Andrii Nakryiko wrote:
> >On Mon, Sep 16, 2019 at 3:58 AM Ivan Khoronzhuk
> ><ivan.khoronzhuk@linaro.org> wrote:
> >>
> >> The makefile.target is added only and will be used in
> >
> >typo: Makefile
> >
> >> sample/bpf/Makefile later in order to switch cross-compiling on CC
> >
> >on -> to
> >
> >> from HOSTCC environment.
> >>
> >> The HOSTCC is supposed to build binaries and tools running on the host
> >> afterwards, in order to simplify build or so, like "fixdep" or else.
> >> In case of cross compiling "fixdep" is executed on host when the rest
> >> samples should run on target arch. In order to build binaries for
> >> target arch with CC and tools running on host with HOSTCC, lets add
> >> Makefile.target for simplicity, having definition and routines similar
> >> to ones, used in script/Makefile.host. This allows later add
> >> cross-compilation to samples/bpf with minimum changes.
> >>
> >> The tprog stands for target programs built with CC.
> >
> >Why tprog? Could we just use prog: hostprog vs prog.
> Prev. version was with prog, but Yonghong Song found it ambiguous.
> As prog can be bpf also. So, decision was made to follow logic:
> * target prog - non bpf progs
> * bpf prog = bpf prog, that can be later smth similar, providing build options
>   for each bpf object separately.
>

Well, I'm not going to insist, but BPF program is a C function,
compiled BPF .o file is BPF object, so I don't think there is going to
be too much confusion to have progs and hostprogs in Makefile. But I'm
fine with tprog.

> Details here:
> https://lkml.org/lkml/2019/9/13/1037
>
> >
> >>
> >> Makefile.target contains only stuff needed for samples/bpf, potentially
> >> can be reused later and now needed only for unblocking tricky
> >> samples/bpf cross compilation.
> >>
> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >> ---
> >>  samples/bpf/Makefile.target | 75 +++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 75 insertions(+)
> >>  create mode 100644 samples/bpf/Makefile.target
> >>
> >> diff --git a/samples/bpf/Makefile.target b/samples/bpf/Makefile.target
> >> new file mode 100644
> >> index 000000000000..fb6de63f7d2f
> >> --- /dev/null
> >> +++ b/samples/bpf/Makefile.target
> >> @@ -0,0 +1,75 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +# ==========================================================================
> >> +# Building binaries on the host system
> >> +# Binaries are not used during the compilation of the kernel, and intendent
> >
> >typo: intended
> >
> >> +# to be build for target board, target board can be host ofc. Added to build
> >
> >What's ofc, is it "of course"?
> yes, ofc )

Alright, let's not try to save 5 letters, it's quite confusing.

>
> >
> >> +# binaries to run not on host system.
> >> +#
> >> +# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
> >> +# tprogs-y := xsk_example
> >> +# Will compile xdpsock_example.c and create an executable named xsk_example
> >
> >You mix references to xsk_example and xdpsock_example, which is very
> >confusing. I'm guessing you meant to use xdpsock_example consistently.
> Oh, yes. Thanks.
>
> >
> >> +#
> >> +# tprogs-y    := xdpsock
> >> +# xdpsock-objs := xdpsock_1.o xdpsock_2.o
> >> +# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
> >> +# xdpsock, based on xdpsock_1.o and xdpsock_2.o
> >> +#
> >> +# Inherited from scripts/Makefile.host
> >
> >"Inspired by" or "Derived from" would be probably more appropriate term :)
> I will replace with "Derived from", looks better.
>

sounds good

> >
> >> +#
> >> +__tprogs := $(sort $(tprogs-y))
> >> +
> >> +# C code
> >> +# Executables compiled from a single .c file
> >> +tprog-csingle  := $(foreach m,$(__tprogs), \
> >> +                       $(if $($(m)-objs),,$(m)))
> >> +
> >> +# C executables linked based on several .o files
> >> +tprog-cmulti   := $(foreach m,$(__tprogs),\
> >> +                       $(if $($(m)-objs),$(m)))
> >> +
> >> +# Object (.o) files compiled from .c files
> >> +tprog-cobjs    := $(sort $(foreach m,$(__tprogs),$($(m)-objs)))
> >> +
> >> +tprog-csingle  := $(addprefix $(obj)/,$(tprog-csingle))
> >> +tprog-cmulti   := $(addprefix $(obj)/,$(tprog-cmulti))
> >> +tprog-cobjs    := $(addprefix $(obj)/,$(tprog-cobjs))
> >> +
> >> +#####
> >> +# Handle options to gcc. Support building with separate output directory
> >> +
> >> +_tprogc_flags   = $(TPROGS_CFLAGS) \
> >> +                 $(TPROGCFLAGS_$(basetarget).o)
> >> +
> >> +# $(objtree)/$(obj) for including generated headers from checkin source files
> >> +ifeq ($(KBUILD_EXTMOD),)
> >> +ifdef building_out_of_srctree
> >> +_tprogc_flags   += -I $(objtree)/$(obj)
> >> +endif
> >> +endif
> >> +
> >> +tprogc_flags    = -Wp,-MD,$(depfile) $(_tprogc_flags)
> >> +
> >> +# Create executable from a single .c file
> >> +# tprog-csingle -> Executable
> >> +quiet_cmd_tprog-csingle        = CC  $@
> >> +      cmd_tprog-csingle        = $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ $< \
> >> +               $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
> >> +$(tprog-csingle): $(obj)/%: $(src)/%.c FORCE
> >> +       $(call if_changed_dep,tprog-csingle)
> >> +
> >> +# Link an executable based on list of .o files, all plain c
> >> +# tprog-cmulti -> executable
> >> +quiet_cmd_tprog-cmulti = LD  $@
> >> +      cmd_tprog-cmulti = $(CC) $(tprogc_flags) $(TPROGS_LDFLAGS) -o $@ \
> >> +                         $(addprefix $(obj)/,$($(@F)-objs)) \
> >> +                         $(TPROGS_LDLIBS) $(TPROGLDLIBS_$(@F))
> >> +$(tprog-cmulti): $(tprog-cobjs) FORCE
> >> +       $(call if_changed,tprog-cmulti)
> >> +$(call multi_depend, $(tprog-cmulti), , -objs)
> >> +
> >> +# Create .o file from a single .c file
> >> +# tprog-cobjs -> .o
> >> +quiet_cmd_tprog-cobjs  = CC  $@
> >> +      cmd_tprog-cobjs  = $(CC) $(tprogc_flags) -c -o $@ $<
> >> +$(tprog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
> >> +       $(call if_changed_dep,tprog-cobjs)
> >> --
> >> 2.17.1
> >>
> >
> >tprogs is quite confusing, but overall looks good to me.
> I tend to leave it as tprogs, unless it's going to be progs and agreed with
> Yonghong.
>
> It follows logic:
> - tprogs for bins
> - bpfprogs or bojs or bprogs (could be) for bpf obj

as mentioned above, we never build "BPF programs", they are always
part of BPF objects. But as I mentioned, I'm fine with sticking to
tprog.

>
> --
> Regards,
> Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZt0DnjU3Fw7TfiqqyZDOAX0mcKWasY4zWG3EcYyDzHxw%40mail.gmail.com.
