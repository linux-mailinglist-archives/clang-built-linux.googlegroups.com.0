Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBYVJ6DVQKGQEC7Q3H3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 510BDB2846
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Sep 2019 00:21:18 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id o10sf6454303lfb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 15:21:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568413277; cv=pass;
        d=google.com; s=arc-20160816;
        b=NEOsXdL102W4jITf1QP/CacsXLufTkNwlSVNu008wTs5MtmIp9tgmPBmJQrxpJyMj2
         swtfPoDFYFBVxK5LPbb3b/V7cCA29u9Q7CkL+E8VXXcHylDuVD1WfH9kDSx62g1jvmhw
         JMoCyGanReNUbuhPnE89VwFcAu/SA/ml8bcZX4lkdzaqzDX6RZpNvnEFw5TMfR7ohmvI
         9F0RS2to6qNPNwApDG0MZJMLvYq/aZggX5bm8ewEorQhvZdFBaL6KOojjiN89MInrWcF
         y3uovKAqZUfGbNUM9dqx9on0eq6UoVBBsJui9RCmAmoGB6OKGg5dKhJmz+AmvRjXVJr0
         Lu+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Aeeh1TBdaefP4uO1yTPQAQrnDxV0ySIBM9woY3o5I3U=;
        b=oAIr70EpCpvomNbPAisy0DMZIEAJwzI6+vfsmxyC8ZTQun9JwyiT1lAB0LtE/kfHyc
         hoN+kIjkkODGIpUSdtTU3bAnproTHiIVe5Cq6ZI26erS1dx+Psq667a59s6IFx1rLYkh
         5b0O0F3FzHU2b4Y4Okzz+D3Hfp828NMyoWGb07cMmETZpwSFNCNDlss6FDj//ihMxBDd
         9fBaXFNqZcMyiwBMfR+hx9kZ1+TU3vQrHOB7pSXdahEcGGRziDUJN7O9EIl7i5lSBOie
         LoTW5F9i7MFnu/8+xcLh7sAIxtZ70nfmP/5mE0HTJb/pLiHBCbgjxstzxowt7BN+o9Wh
         KOmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=yWIvAi71;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aeeh1TBdaefP4uO1yTPQAQrnDxV0ySIBM9woY3o5I3U=;
        b=BnerCQghqyeDw9lJD1V75q3KfmBvM/TY5FNWXF9ra+/o2JGFJv2cIF2xT6Gw0mOvAx
         tR+JYi/GTdKK6/3aPCH9FiduoyZMeZ+gQz0770itjglkRnzbEf+zUHhA9+JaOiM39ixd
         A/fPCOkmXvbARbcMJSduPc9HxPUBueFtoBH3DkfvpZXJ1Pj2vk3BXAStey6OumJfUjBq
         Gu0h/6Zl3PTiFaMlcDaztMElrBHGWmUgPspntyTi1DmaFsMrkasmyEnhpDFqMJhdKqlJ
         EXSlGTpjRxlns8Fak1Ukg99ah1vx1Dv+6zPc0vPJh6LFdsLirJ4pk4lNxiRltV7g6WWC
         2Mpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aeeh1TBdaefP4uO1yTPQAQrnDxV0ySIBM9woY3o5I3U=;
        b=bGy2vwsvmOcdykiJF6p6G5n7qXvy3w/Z4KRFFWUTatvfHwhWhAS1clDFsHURaUfIPd
         YC2i/wrz8PfuF5AQg7QUyMvbUSw/L/fRKXDWLiUTnbYMeQqLjKf3Ryumkys4YZjc7QdF
         onBuurS/G5IVQexIoyTG8IgKFKfTMYozFW/q1fa0X+yTxqKxSrNSaXSbW3cxTWansVVc
         N7tNZi/jbGNIHCW29GS6SmXTAblTFzm7XQfOhAJI1BjD03REGwcOvTViabpYSyio1Hus
         l1VEoao5YSsE+GfiXjNdufEa8CbxrT1KEtWYS0De8ssYkkWOkzMEd4orWtB5EDWSSYc9
         uAHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/jchBmHYFpmSNFboMt2rbbOzjOrzBxStefMdOdd66dATMNzfG
	TRfVOBxiiSJ5WQ8XGvkJcM0=
X-Google-Smtp-Source: APXvYqz5XCtFSYUrepmArb7K/YYuZVmm7tVGCwcjDGYXTK7NZCpKdS+WXoVxq/Pswrx7jtNohMkEQQ==
X-Received: by 2002:a2e:860c:: with SMTP id a12mr30797819lji.116.1568412898206;
        Fri, 13 Sep 2019 15:14:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1122:: with SMTP id e2ls3695054ljo.6.gmail; Fri, 13
 Sep 2019 15:14:57 -0700 (PDT)
X-Received: by 2002:a2e:9955:: with SMTP id r21mr5031485ljj.58.1568412897724;
        Fri, 13 Sep 2019 15:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568412897; cv=none;
        d=google.com; s=arc-20160816;
        b=Kw2tOYQBmK0dP50JVIbUGsuyVj4CQ4tktkdt6phLISrAquhMg9PqTMZXEgoRT19xdU
         LbXbqAoYe+Irk9EqLcahHTJHYUHyz+SiNWoBXTOqQlIZaA65fdt/FdcEb8dak72ckRvt
         QWLv+97sBsPZbUcTwdOplHJp2xRaiJMzUHcwL4/ue0WE+TFEno6pbOf3Ulcpz1eB2bGz
         FdJAE8rBHNFm/bOfGGGF7yMOMXRSjd9INWW4ilOyJ0sNk440QjOVkGl9NH9m7z/wQy7z
         rU3fmRdNmAAsrHzzvKqnsNOJbnntZ1TNbS1J+QFIxiQWnEeX5+LfLay58sS35g2vyiMw
         YAVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Aws4qLTU0wWFl3XhWF/GSUsHrXBVOSQQwQxzuiN2xN0=;
        b=O4nevgT3LFLywGBJ9SprENfMLnbGWl1Ov9ysWMJtfHm1ndc5xWX0o5l7FAtKAwhOIH
         alTgaAUcYvNzLxlhkST32uA7aR5abv+WDMyl179z2yAESwcM01FJp41cgVDLbvojE0ny
         orkU93qhZJcypW7nZXNQFtk3juGey1x1A/Na66JpfbP9DhJUj8lP+/f9XtY9wm3ytjsd
         9RiCzMtM13Mhi9wYAio3JaeClqV4sCCyjnxHHNKFBAzhVVYaJeqefn25s4VrgTcgFnBe
         BZfu8Bp3WpEZhb5EJSr/Ms6LFrGgWqsoMJr0emvRYICUoDzCzcKwjuDeMdX+ddFh44Qp
         GIZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=yWIvAi71;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c8si1824001lfm.4.2019.09.13.15.14.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2019 15:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id v24so889858ljj.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Sep 2019 15:14:57 -0700 (PDT)
X-Received: by 2002:a2e:3618:: with SMTP id d24mr30461361lja.179.1568412897370;
        Fri, 13 Sep 2019 15:14:57 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id w13sm666947lfk.47.2019.09.13.15.14.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Sep 2019 15:14:56 -0700 (PDT)
Date: Sat, 14 Sep 2019 01:14:54 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Yonghong Song <yhs@fb.com>
Cc: "ast@kernel.org" <ast@kernel.org>,
	"daniel@iogearbox.net" <daniel@iogearbox.net>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
	"hawk@kernel.org" <hawk@kernel.org>,
	"john.fastabend@gmail.com" <john.fastabend@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next 07/11] samples: bpf: add makefile.prog for
 separate CC build
Message-ID: <20190913221453.GD26724@khorivan>
Mail-Followup-To: Yonghong Song <yhs@fb.com>,
	"ast@kernel.org" <ast@kernel.org>,
	"daniel@iogearbox.net" <daniel@iogearbox.net>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
	"hawk@kernel.org" <hawk@kernel.org>,
	"john.fastabend@gmail.com" <john.fastabend@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-8-ivan.khoronzhuk@linaro.org>
 <1720c5a5-5c64-46a3-be2f-56b59614f82a@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <1720c5a5-5c64-46a3-be2f-56b59614f82a@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=yWIvAi71;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Sep 13, 2019 at 09:33:58PM +0000, Yonghong Song wrote:
>
>
>On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
>> The makefile.prog is added only, will be used in sample/bpf/Makefile
>> later in order to switch cross-compiling on CC from HOSTCC.
>>
>> The HOSTCC is supposed to build binaries and tools running on the host
>> afterwards, in order to simplify build or so, like "fixdep" or else.
>> In case of cross compiling "fixdep" is executed on host when the rest
>> samples should run on target arch. In order to build binaries for
>> target arch with CC and tools running on host with HOSTCC, lets add
>> Makefile.prog for simplicity, having definition and routines similar
>> to ones, used in script/Makefile.host. This allows later add
>> cross-compilation to samples/bpf with minimum changes.
>
>So this is really Makefile.host or Makefile.user, right?
It's cut and modified version of Makefile.host

>In BPF, 'prog' can refers to user prog or bpf prog.
>To avoid ambiguity, maybe Makefile.host?
Makefile.target? as target = host not always.
Makefile.user also looks ok, but doesn't contain target,
maybe "targetuser", but bpf is also target...
Initially I was thinking about Makefile.targetprog, but it looks too long.

>
>>
>> Makefile.prog contains only stuff needed for samples/bpf, potentially
>> can be reused and extended for other prog sets later and now needed
>
>What do you mean 'extended for other prog sets'? I am wondering whether
Another kind of samples...with c++ for instance.

>we could just include 'scripts/Makefile.host'? How hard it is?
It's bound to HOSTCC and it's environment. It is included by default and
was used before this patchset, blocking cross complication.

>
>> only for unblocking tricky samples/bpf cross compilation.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>   samples/bpf/Makefile.prog | 77 +++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 77 insertions(+)
>>   create mode 100644 samples/bpf/Makefile.prog
>>
>> diff --git a/samples/bpf/Makefile.prog b/samples/bpf/Makefile.prog
>> new file mode 100644
>> index 000000000000..3781999b9193
>> --- /dev/null
>> +++ b/samples/bpf/Makefile.prog
>> @@ -0,0 +1,77 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# ==========================================================================
>> +# Building binaries on the host system
>> +# Binaries are not used during the compilation of the kernel, and intendent
>> +# to be build for target board, target board can be host ofc. Added to build
>> +# binaries to run not on host system.
>> +#
>> +# Only C is supported, but can be extended for C++.
>
>The above comment is not needed.
will drop it.

>samples/bpf/ only have C now. I am wondering whether your below scripts
>can be simplified, e.g., removing cxxobjs.
I think yes, will try

>
>> +#
>> +# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
>> +# progs-y := xsk_example
>> +# Will compile xdpsock_example.c and create an executable named xsk_example
>> +#
>> +# progs-y    := xdpsock
>> +# xdpsock-objs := xdpsock_1.o xdpsock_2.o
>> +# Will compile xdpsock_1.c and xdpsock_2.c, and then link the executable
>> +# xdpsock, based on xdpsock_1.o and xdpsock_2.o
>> +#
>> +# Inherited from scripts/Makefile.host
>> +#
>> +__progs := $(sort $(progs-y))
>> +
>> +# C code
>> +# Executables compiled from a single .c file
>> +prog-csingle	:= $(foreach m,$(__progs), \
>> +			$(if $($(m)-objs)$($(m)-cxxobjs),,$(m)))
>> +
>> +# C executables linked based on several .o files
>> +prog-cmulti	:= $(foreach m,$(__progs),\
>> +		   $(if $($(m)-cxxobjs),,$(if $($(m)-objs),$(m))))
>> +
>> +# Object (.o) files compiled from .c files
>> +prog-cobjs	:= $(sort $(foreach m,$(__progs),$($(m)-objs)))
>> +
>> +prog-csingle	:= $(addprefix $(obj)/,$(prog-csingle))
>> +prog-cmulti	:= $(addprefix $(obj)/,$(prog-cmulti))
>> +prog-cobjs	:= $(addprefix $(obj)/,$(prog-cobjs))
>> +
>> +#####
>> +# Handle options to gcc. Support building with separate output directory
>> +
>> +_progc_flags   = $(PROGS_CFLAGS) \
>> +                 $(PROGCFLAGS_$(basetarget).o)
>> +
>> +# $(objtree)/$(obj) for including generated headers from checkin source files
>> +ifeq ($(KBUILD_EXTMOD),)
>> +ifdef building_out_of_srctree
>> +_progc_flags   += -I $(objtree)/$(obj)
>> +endif
>> +endif
>> +
>> +progc_flags    = -Wp,-MD,$(depfile) $(_progc_flags)
>> +
>> +# Create executable from a single .c file
>> +# prog-csingle -> Executable
>> +quiet_cmd_prog-csingle 	= CC  $@
>> +      cmd_prog-csingle	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ $< \
>> +		$(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
>> +$(prog-csingle): $(obj)/%: $(src)/%.c FORCE
>> +	$(call if_changed_dep,prog-csingle)
>> +
>> +# Link an executable based on list of .o files, all plain c
>> +# prog-cmulti -> executable
>> +quiet_cmd_prog-cmulti	= LD  $@
>> +      cmd_prog-cmulti	= $(CC) $(progc_flags) $(PROGS_LDFLAGS) -o $@ \
>> +			  $(addprefix $(obj)/,$($(@F)-objs)) \
>> +			  $(PROGS_LDLIBS) $(PROGLDLIBS_$(@F))
>> +$(prog-cmulti): $(prog-cobjs) FORCE
>> +	$(call if_changed,prog-cmulti)
>> +$(call multi_depend, $(prog-cmulti), , -objs)
>> +
>> +# Create .o file from a single .c file
>> +# prog-cobjs -> .o
>> +quiet_cmd_prog-cobjs	= CC  $@
>> +      cmd_prog-cobjs	= $(CC) $(progc_flags) -c -o $@ $<
>> +$(prog-cobjs): $(obj)/%.o: $(src)/%.c FORCE
>> +	$(call if_changed_dep,prog-cobjs)
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913221453.GD26724%40khorivan.
