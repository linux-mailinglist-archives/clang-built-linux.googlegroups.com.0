Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ7DYTZQKGQE3WFKROA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 52303188EF0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 21:24:08 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id c127sf9782912vkh.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584476647; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ect2DropJ/loL1uL195MRJ+gG0YhUAAEoNpBzjLYRfE/Vn/0N+8zILRVvy0gGGP1/E
         DyjJAf7act0uYOhmz7VpS4rdZLF6wiU6ErSIsY8k9WymQ9Xw90y2dAKs4PoyeQKeYnpv
         yoCA1MaH8L+J3XVvHjJcqt67qm1LLNMT0HEsaoJLHdqo65nFeAsoMayqyS+cJGGKW2Tc
         h8X5LlIH0YIzJSvGeqcHcDoh+iP0eJOptmdjpC1UHLwa5Azs+LlDb1Yz4EVxlZXO9z/W
         S/DpX/lhykB81KjmV6Ylc9WSR7/DK64cC2rWe5FrGJZ9QiqC/sfvlef0d+enqa5aAFFW
         h+gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=V5DkBLa7lmBBpomcrdRqsOsRPcZKAIvxtdiLiATnrH0=;
        b=0Ueomyt0JNM4gF4MpxFmJjNWUNvtslYDbh4NuD8jh9bMr6jXzFrOLnIhF/mkBW8Ycr
         4cuiJpmY2HW1mtE7K94G4QnV5vLXzcxige2Asm8obMKLqhx9TPNLl0F8zpPmPH66wpvS
         3WiT3hqLzrLL8fZbBOuRYqUyf1RY4Cl/Lf1asfIgDYfCt8T8dKUb6e4skCDpTBwabA2h
         qDLjUj8AbS1rfQuntFXNHrakNsptE8YTGGqbOf4thvekYTBTcxegQIuVThwGCmUhyH9G
         7WKN3zE65XPOeW4xvM5TcAjjLNAfDhc8J9vO0b1rGelxdKsE6euaFTAu8begvWEer0/5
         vzdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FXvN5UNl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V5DkBLa7lmBBpomcrdRqsOsRPcZKAIvxtdiLiATnrH0=;
        b=Ds0jXeiQ5OtVCtmxWatzL/grNa5+cO71mYRN2HulmhaGniMh9GtxDYLs9Vh7PLXkCU
         p+xny6dwNvP4UxSh64qPWk5aEpRytVKLMgXcDPk5vHOczecpIpi9YILXsKZ0RQfzJweI
         5sH2BQcdXtUz6RidFYgHOZfudJwmPmkDhAeYW2u/L7sjnaqLhyJC8TdENsoXik383B9O
         Jmks1IKyISiplbNcojht3lETJhZpVa3pa7yNwZXMVfYfNyA1ytQdYEBWLeeY+HYmP7YD
         2NJM9nT0jNz1yTXZIzdombfftT3FPGDl5KzVDOpBbVRCU5XwLtIa/Q0em7QJCORTscUZ
         71CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V5DkBLa7lmBBpomcrdRqsOsRPcZKAIvxtdiLiATnrH0=;
        b=hv47f7ZkNnX6GiP5zuPgE7Oy8NcBI/2ElFzZx0o61ROB9Q4wwzRqKa2z1dUqA5N4EA
         DXUXeeiYtAgM4rdEJ5hYjem85/Xlxu13wP6NfEzT8MjYKIadzQP9ORv5CroSFYgIVkJK
         q/krQJ1dJ8TZ+V42Y2ITTus5F2vP3rNLiM7koSdAFMCr04N5seCYvxk2UqNexuXLG9ke
         mGN9gUpPaE/r4lS5swg4SKBaJ/J5Nx3IlPYRcE/WQP9Fg51dp7bZjdxagnrL5UGBQ+gF
         BbJE+GmjaBKEJzQ0aEx2vjwW9c7IkLM5m0afgxZYPN6NC2ohVMBUW1FsVjT2eKcrdU3z
         V0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V5DkBLa7lmBBpomcrdRqsOsRPcZKAIvxtdiLiATnrH0=;
        b=k+PQVFcGZ238bTzZL389lKrMbu2/AIwgYBb6tGnNoKNqdIxgKiGzRVEunDdxzbUeWx
         zDi4J4K6nlCCmbmA/SXvlKxfDsT8k6ms2KaVBlN+nUtu4FCw7nI49sVQI8he2vPBqel0
         2kGzvoLHOg0KmvaelGZlChWpqejHNpLnPc3Zf9XxAKbejuw6CO5Edut7eShy9spqqubJ
         KiuoYJVIKIThtMU2j67ttYEvHoJGYIHVijiXkYhVpIw36FkhsUNK68z/nVko7lyk/dZ3
         VK5f0OjM14VTZ825AiUIjlVXRpgS9vEs87j5dA0dVjOk9cwGOGPV9e4/qNU9g5F6yGh0
         KkIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0BLg0REI9TS0W4xcblnuo7frGaJvNGc76QDfRIvkji1iFvl9I6
	Sc688vBuJdsN7NWBoWq9AW8=
X-Google-Smtp-Source: ADFU+vvvm597CA4Nc7lDoS78th7oZEwg5S02lLhIAW1O/II3y8rEx/73MSXGdjDJfsFSBqn2eOxsCg==
X-Received: by 2002:a05:6102:1052:: with SMTP id h18mr674515vsq.202.1584476647090;
        Tue, 17 Mar 2020 13:24:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls2962670vsi.6.gmail; Tue, 17 Mar
 2020 13:24:06 -0700 (PDT)
X-Received: by 2002:a67:646:: with SMTP id 67mr625749vsg.34.1584476646746;
        Tue, 17 Mar 2020 13:24:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584476646; cv=none;
        d=google.com; s=arc-20160816;
        b=II/0F0YP40vK7Pdl0LdPExsU/C6hLi+bldtqbN1ptRPxn+UTf2YXHKO0wM1aO5Wzxx
         6NIroQR0N5wmXbBpKh8XK0G/X7DQ3fosFrIHPPqe1E0agDzl7uB0tYOOztd42QvF0Odd
         NCAj4lKi7UAWmv480sNQXkhGn6AWZEk+FM+66YlyEp5UQP78ZKIwcNAQct62jQBrqr8r
         GSilEM+YQLr6sFwokjSESvx6j2kFMgF26Kw4w25r3vekwAZ1hVpOjdGspcIeZuHVG4GF
         rWtUVePkUl4o1Ia8uQe+mklB4H3AFrPwbGI/1gTEIJCWS+pbA0hgI1RUrRVPeT3zR9sq
         Jmjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZwrUWPje+er/rxMVZKdfcHZbDPlxBar5CzVyaKnohHw=;
        b=yugrxlPdNYDZCXvr6Uj534IDoDO3ML+Y0vzCEVhxRbm2vMwKfCvKBd/+LI+sAF8KdG
         VUuUNErRC1SA7150e5XtGjoBf16Iyf30YfvZNjQVmLPODm0tpA7MuA/FecOMhGwf7pwc
         n9xFcbgAiL5C9JdkwePu6JxkJh9Ow5IkDhZrjy9vSYnYvYXY0rHNr9OBDI9ubVy3M6Ec
         7u15O+zqGELTYf7oZPYSwOzRZiuxGneuejHYDMQC7fm7IVCoiZ0BnNkMNmP0fxEqBzzK
         rJQ0PhJK2Xnh2bpFbuCDqngvUOxoe+X1WdX3wlVJ+g0YFzYOKIBYvZl552qKUUJt7N8p
         CDtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FXvN5UNl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c3si181815uam.1.2020.03.17.13.24.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 13:24:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id w13so23305746oih.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 13:24:06 -0700 (PDT)
X-Received: by 2002:aca:bfc6:: with SMTP id p189mr563472oif.21.1584476645956;
        Tue, 17 Mar 2020 13:24:05 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k110sm1380002otc.59.2020.03.17.13.24.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 13:24:05 -0700 (PDT)
Date: Tue, 17 Mar 2020 13:24:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: [RFC 2/2] Makefile.llvm: simplify LLVM build
Message-ID: <20200317202404.GA20746@ubuntu-m2-xlarge-x86>
References: <20200220234858.145546-1-ndesaulniers@google.com>
 <20200220234858.145546-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220234858.145546-2-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FXvN5UNl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Feb 20, 2020 at 03:48:58PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> Prior to this patch, building the Linux kernel with Clang
> looked like:
> 
> $ make CC=clang
> 
> or when cross compiling:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
> 
> which got very verbose and unwieldy when using all of LLVM's substitutes
> for GNU binutils:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
>   LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
>   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
>   READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
>   HOSTLD=ld.lld
> 
> This change adds a new Makefile under scripts/ which will be included in
> the top level Makefile AFTER CC and friends are set, in order to make
> the use of LLVM utilities when building a Linux kernel more ergonomic.
> 
> With this patch, the above now looks like:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1
> 
> Then you can "opt out" of certain LLVM utilities explicitly:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 AS=as
> 
> will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
> 
> This would make it more verbose to opt into just one tool from LLVM, but
> this patch doesn't actually break the old style; just leave off LLVM=1.
> Also, LLVM=1 CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> In that case, it's recommended to just drop LLVM=1 and use the old
> style. So LLVM=1 can be thought of as default to LLVM with explicit opt
> ins for GNU, vs the current case of default to GNU and opt in for LLVM.
> 
> A key part of the design of this patch is to be minimally invasive to
> the top level Makefile and not break existing workflows. We could get
> more aggressive, but I'd prefer to save larger refactorings for another
> day.
> 
> About the script:
> The pattern used in the script is in the form:
> 
> ifeq "$(origin $(CC))" "file"
> $(CC) := $(clang)
> else
> override $(CC) := $(CROSS_COMPILE)$(CC)
> endif
> 
> "Metaprogramming" (eval) is used to template the above to make it more
> concise for specifying all of the substitutions.
> 
> The "origin" of a variable tracks whether a variable was explicitly set
> via "command line", "environment", was defined earlier via Makefile
> "file", was provided by "default", or was "undefined".
> 
> Variable assignment in GNU Make has some special and complicated rules.
> 
> If the variable was set earlier explicitly in the Makefile, we can
> simply reassign a new value to it. If a variable was unspecified, then
> earlier assignments were executed and change the origin to file.
> Otherwise, the variable was explicitly specified.
> 
> If a variable's "origin" was "command line" or "environment",
> non-"override" assignments are not executed. The "override" directive
> forces the assignment regardless of "origin".
> 
> Some tips I found useful for debugging for future travelers:
> 
> $(info $$origin of $$CC is $(origin CC))
> 
> at the start of the new script for all of the variables can help you
> understand "default" vs "undefined" variable origins.
> 
> $(info $$CC is [${CC}])
> 
> in the top level Makefile after including the new script, for all of the
> variables can help you check that they're being set as expected.
> 
> Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
> Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
> Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
> Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile              |  4 ++++
>  scripts/Makefile.llvm | 24 ++++++++++++++++++++++++
>  2 files changed, 28 insertions(+)
>  create mode 100644 scripts/Makefile.llvm
> 
> diff --git a/Makefile b/Makefile
> index b954c304c479..8c8888ebb822 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -472,6 +472,10 @@ KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>  
> +ifeq ($(LLVM),1)
> +include scripts/Makefile.llvm
> +endif
> +
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> new file mode 100644
> index 000000000000..a4401c8677dc
> --- /dev/null
> +++ b/scripts/Makefile.llvm
> @@ -0,0 +1,24 @@
> +define META_set =
> +ifeq "$(origin $(1))" "file"
> +$(1) := $(2)
> +else
> +override $(1) := $(CROSS_COMPILE)$($(1))
> +endif
> +endef
> +
> +$(eval $(call META_set,CC,clang))
> +$(eval $(call META_set,AS,clang))
> +$(eval $(call META_set,LD,ld.lld))
> +$(eval $(call META_set,AR,llvm-ar))
> +$(eval $(call META_set,NM,llvm-nm))
> +$(eval $(call META_set,STRIP,llvm-strip))
> +$(eval $(call META_set,OBJCOPY,llvm-objcopy))
> +$(eval $(call META_set,OBJDUMP,llvm-objdump))
> +$(eval $(call META_set,OBJSIZE,llvm-objsize))
> +$(eval $(call META_set,READELF,llvm-readelf))
> +$(eval $(call META_set,HOSTCC,clang))
> +$(eval $(call META_set,HOSTCXX,clang++))
> +$(eval $(call META_set,HOSTAR,llvm-ar))
> +$(eval $(call META_set,HOSTLD,ld.lld))
> +
> +## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

The overall approach seems relatively sane to me, as someone who is not
a GNU make expert. This could be handy for seeing how hermetic the build
system is by symlinking /bin/false to gcc, ld, as, etc and adding that
folder to PATH then passing LLVM=1.

Something that needs to be considered is how do we handle people who use
something like apt.llvm.org, where those versions are suffixed with a
number. Realistically, they could just add /usr/lib/llvm-#/bin to PATH
and then everything would work but should we add something like
LLVM_SUFFIX= so that they could say LLVM_SUFFIX=-11 to get clang-11,
ld.lld-11, etc?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317202404.GA20746%40ubuntu-m2-xlarge-x86.
