Return-Path: <clang-built-linux+bncBAABBXU56PYAKGQEQAQNISY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 210AD139A93
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 21:11:11 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id z7sf13288665ywd.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 12:11:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578946270; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNriIEihRWzbWoj4BQdYKIz+Gy34eYaXVrIx7e8ST4ez+HsGo++6ARKM79LiDBWoOP
         4SnBUW+ZkAYQix41SLVDW0wUgYjv2nRcslR7tFCraw2a6YltwHnAZy2liOyDvPFUvdAe
         8kLErRDGCV0R+jgJGnXaC4BCwjvlrrdVG/q72wfWXODynDabgyHb0wJ0lzIB7sNPbdaP
         NnfoXePw29gcZQyul0fomveussvU3K+B1fnP3b7bP3ZFJh2mmrWHFAcIi7ZdGdsSM0BZ
         JjDXTU3+rF2r8hpLlahwBR6QaNUPXZbTMJa8k6lSFPRhoO24yjcD5nLGFgWEWs+p7Vjb
         YHjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=sbe/yo5Cpkpki/ywLESvbcuZiNG93LKidytRckYL4lQ=;
        b=oWpRxigJsQqY17zavOE9bIMxpJflbY34ktN8ykgAqbORvh0mWrRCHWclv+Zt7Phpy7
         dI9F/oUdD0HEjyZp0W2jgqeoP6ULa/IfJCr96Uhzl1Txb1C4ttaLy7BLe7ndRUNGZT1O
         oNv/KuiVhF5Y1bdnawm8oMNniEdzwfBQhPak1W4fQQhqIoUhX/SlyhjVEDQe3jgkYKE5
         XGotdFKmaWlLZZBFlejdkJaaUugWV7dX7p9JaeedbbvWkTtn1iTN4wzRO9rLlrUMwd3l
         cugGIDNtkl7We6WX4mLu7XAY8trdf3knO8IwEo1VwLJ4BYalTemKuzWVGn9odkXrAD4G
         hoAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wWoUFQTh;
       spf=pass (google.com: domain of zanussi@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=zanussi@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbe/yo5Cpkpki/ywLESvbcuZiNG93LKidytRckYL4lQ=;
        b=lLxOdH0Bi11yLcF1VjEyTX22Hk4u+mz0VRKnI5MAxikpcyfLMYucEpYcdd/qOYDHub
         JQX34XHzvWUio9/aKx8MS4WVEAFneGxTdtw7DPl6OL887pTzSGaE0awZFVbHmSGTMRgC
         ny0StKxCeP1GnWrQGW5Oq+VeohWaGvIqKbiwgwyBLCKDXNrpv0KvYdg1+HL/U54FrnnD
         7bUYxy9v0brZuqOGHHgy/N9c0WHEsY33Q6zshvHTBVegAE3HrE4tyu3eBuhKkLijjmvN
         Xqn/pG1HX4C5xIfOKfyUevHPca5hNBo8BTngAS17NqOQeUlFPpigHBXU+CgJjGf4Xb2V
         pj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbe/yo5Cpkpki/ywLESvbcuZiNG93LKidytRckYL4lQ=;
        b=FexnKbucr98xv+kBxCJaGpbQfkGlaJNAyrPsJPBovBuO/+34A7iB/9dmSKuqp/Hyd+
         8VLxFv5y85btHdKR1IGZYVpuV3Rq1Hfv00DN7bKXmJF9U6qbQPvxioCUJaAIgAb+yJfe
         Bu/dgKPwzACUzSEoDuqojRAqmqGVRwCwcPryDFZmDrlDEjUP1A9zw8RcY7bgMEzlj0ZC
         CYOJqqObuO3wAs8bwiYktUWGfqv6qd1mM6V+7pij6Bs1QXkSYwtDH+nURCQzpDwSLvEw
         udMwzgIWwOt4YQS8IZ4hk4ZpLRk4kQL4WueWE67BsZ9n16QI0gTkJUOPy3D2g3bC6HUn
         40mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHxyu4SYq/nHPL2Ujs6r4GJFSt0/LmTEDF0SyJP2fVB7NfeDu/
	HfHI2mxZuGDKjiMz9SxW3+I=
X-Google-Smtp-Source: APXvYqy+koNxEA0OKfRK6vz2FuK9f6x7ZIUFG+dTutgTRr520nHAh3rCDwV/7W8t2Dhnimcqv/QISg==
X-Received: by 2002:a25:5014:: with SMTP id e20mr14187835ybb.479.1578946270120;
        Mon, 13 Jan 2020 12:11:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aad0:: with SMTP id t74ls2087823ybi.12.gmail; Mon, 13
 Jan 2020 12:11:09 -0800 (PST)
X-Received: by 2002:a25:9907:: with SMTP id z7mr15193636ybn.403.1578946269788;
        Mon, 13 Jan 2020 12:11:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578946269; cv=none;
        d=google.com; s=arc-20160816;
        b=q6vTRtFryT8heGhnMWrOADsR/WUaIM/EDu4X5osyAIMkJP/NYFQljxrTPL+QX/3X4F
         nuM07GcbDJkaRWdaMaxhfapH1BlyZ8d17ZpQsLQNPCj2/f1eiWeGn7YAirRwraecU9aS
         QpdUA2fW0jdPQiuVg+qfixj+tiDb9mnILprb8bMz7hrDnobiW8gwEqKnhmS72iLG1ntt
         laOHRmFSUH4/ec/bl7nsmYlmdSWZhjlGv5PH/sQ6uN2h5OfcQSMAyFNh/SuPtDub1F3V
         bxyz59r3qMLPUWdFGxCXUyniD0R4VRTh1c/JqM1tTA9xzttqYO6px1tIVXd8wmU/Um0P
         gGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=HclkehFVx6+lH6yvq39wwqAIir1gCusSAdQgIuhIpfM=;
        b=n2f0Le+IwkCEGoyufoBPTTi/pNG/9qf8SBfmO7DyuwXTTnKp8jt9tT7KPuABc+t6ua
         QCRxpuuiIJMTNyNCRaFLInZCHsTDUeDSoHzDMIEEjwr3RbwQBSR7lmte21Hv2jvCofgH
         V3rwGFuR8Jzq4vbxRrWCbMrrixoahH28LrCt6gWUYou2ZIAQ2PgAEH2/EX/usUTGZDWC
         5q4z4KVabNqTFvSMHpvvAqyhtY04RHo6AfGHjDelWopFy5tzXUoFtmjiwuLTqG++yVHQ
         0fyE585Fb0FaJEoTRmwVatty0ALMMUcKPlCrctiuotBp2/3k/WpQhXqpG0S5LcyOTfd0
         2HuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wWoUFQTh;
       spf=pass (google.com: domain of zanussi@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=zanussi@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e65si475143ybb.0.2020.01.13.12.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Jan 2020 12:11:09 -0800 (PST)
Received-SPF: pass (google.com: domain of zanussi@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from tzanussi-mobl (c-98-220-238-81.hsd1.il.comcast.net [98.220.238.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 59A9F21569;
	Mon, 13 Jan 2020 20:11:08 +0000 (UTC)
Message-ID: <1578946267.31031.8.camel@kernel.org>
Subject: Re: [zanussi-trace:ftrace/synth-event-gen-v2 10/12]
 kernel/trace/trace_kprobe.c:974:17: warning: passing an object that
 undergoes default argument promotion to 'va_start' has undefined behavior
From: Tom Zanussi <zanussi@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org, clang-built-linux
 <clang-built-linux@googlegroups.com>,  kbuild test robot <lkp@intel.com>,
 kbuild-all@lists.01.org
Date: Mon, 13 Jan 2020 14:11:07 -0600
In-Reply-To: <CAKwvOdmQovj9tDQ=MsAmNU_ghGqVnS9hAUNSWo_y2ACbhm8sZw@mail.gmail.com>
References: <202001112058.4xALCb72%lkp@intel.com>
	 <CAKwvOdmQovj9tDQ=MsAmNU_ghGqVnS9hAUNSWo_y2ACbhm8sZw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.1-1
Mime-Version: 1.0
X-Original-Sender: zanussi@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wWoUFQTh;       spf=pass
 (google.com: domain of zanussi@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=zanussi@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Nick,

On Mon, 2020-01-13 at 09:20 -0800, Nick Desaulniers wrote:
> Hi Tom,
> Below is a report from a 0day bot build w/ Clang, can you please take
> a look? (Apologies if this has been previously reported).  In the
> past, -Wvarargs warnings are usually related to the last parameter of
> a va_arg function undergoing implicit promotion (which is explicitly
> UB, IIRC).
> 

OK, looks like just changing the param order should fix it, thanks for
the report.

Tom

> On Sat, Jan 11, 2020 at 4:35 AM kbuild test robot <lkp@intel.com>
> wrote:
> > 
> > CC: kbuild-all@lists.01.org
> > TO: Tom Zanussi <zanussi@kernel.org>
> > 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/zanussi/lin
> > ux-trace.git ftrace/synth-event-gen-v2
> > head:   91ee64186d5894724e276c4e7fad70446d7a02a7
> > commit: 5f052546541d6cc5ad00e28aca6376c221db5c7e [10/12] tracing:
> > Add kprobe event command generation functions
> > config: x86_64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> > 016bf03ef6fcd9dce43b0c17971f76323f07a684)
> > reproduce:
> >         git checkout 5f052546541d6cc5ad00e28aca6376c221db5c7e
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > > > kernel/trace/trace_kprobe.c:974:17: warning: passing an object
> > > > that undergoes default argument promotion to 'va_start' has
> > > > undefined behavior [-Wvarargs]
> > 
> >            va_start(args, kretprobe);
> >                           ^
> >    kernel/trace/trace_kprobe.c:947:30: note: parameter of type
> > 'bool' (aka '_Bool') is declared here
> >                         const char *loc, bool kretprobe, ...)
> >                                               ^
> >    1 warning generated.
> > 
> > vim +/va_start +974 kernel/trace/trace_kprobe.c
> > 
> >    925
> >    926  /**
> >    927   * __gen_kprobe_cmd - Generate a synthetic event command
> > from arg list
> >    928   * @cmd: A pointer to the dynevent_cmd struct representing
> > the new event
> >    929   * @name: The name of the kprobe event
> >    930   * @loc: The location of the kprobe event
> >    931   * @kretprobe: Is this a return probe?
> >    932   * @args: Variable number of arg (pairs), one pair for each
> > field
> >    933   *
> >    934   * NOTE: Users normally won't want to call this function
> > directly, but
> >    935   * rather use the gen_kprobe_cmd() wrapper, which
> > automatically adds a
> >    936   * NULL to the end of the arg list.  If this function is
> > used
> >    937   * directly, make suer he last arg in the variable arg list
> > is NULL.
> >    938   *
> >    939   * Generate a kprobe event command to be executed by
> >    940   * create_dynevent().  This function can be used to
> > generate the
> >    941   * complete command or only the first part of it; in the
> > latter case,
> >    942   * add_probe_fields() can be used to add more fields
> > following this.
> >    943   *
> >    944   * Return: 0 if successful, error otherwise.
> >    945   */
> >    946  int __gen_kprobe_cmd(struct dynevent_cmd *cmd, const char
> > *name,
> >    947                       const char *loc, bool kretprobe, ...)
> >    948  {
> >    949          char buf[MAX_EVENT_NAME_LEN];
> >    950          struct dynevent_arg arg;
> >    951          va_list args;
> >    952          int ret;
> >    953
> >    954          if (cmd->type != DYNEVENT_TYPE_KPROBE)
> >    955                  return -EINVAL;
> >    956
> >    957          if (kretprobe)
> >    958                  snprintf(buf, MAX_EVENT_NAME_LEN, "r:%s",
> > name);
> >    959          else
> >    960                  snprintf(buf, MAX_EVENT_NAME_LEN, "p:%s",
> > name);
> >    961
> >    962          dynevent_arg_init(&arg, NULL, 0);
> >    963          arg.str = buf;
> >    964          ret = add_dynevent_arg(cmd, &arg);
> >    965          if (ret)
> >    966                  return ret;
> >    967
> >    968          dynevent_arg_init(&arg, NULL, 0);
> >    969          arg.str = loc;
> >    970          ret = add_dynevent_arg(cmd, &arg);
> >    971          if (ret)
> >    972                  return ret;
> >    973
> >  > 974          va_start(args, kretprobe);
> >    975          for (;;) {
> >    976                  const char *field;
> >    977
> >    978                  field = va_arg(args, const char *);
> >    979                  if (!field)
> >    980                          break;
> >    981
> >    982                  if (++cmd->n_fields > MAX_TRACE_ARGS) {
> >    983                          ret = -EINVAL;
> >    984                          break;
> >    985                  }
> >    986
> >    987                  dynevent_arg_init(&arg, NULL, 0);
> >    988                  arg.str = field;
> >    989                  ret = add_dynevent_arg(cmd, &arg);
> >    990                  if (ret)
> >    991                          break;
> >    992          }
> >    993          va_end(args);
> >    994
> >    995          return ret;
> >    996  }
> >    997  EXPORT_SYMBOL_GPL(__gen_kprobe_cmd);
> >    998
> > 
> > ---
> > 0-DAY kernel test infrastructure                 Open Source
> > Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel
> > Corporation
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1578946267.31031.8.camel%40kernel.org.
