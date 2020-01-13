Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU6N6LYAKGQESTVXSHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B23B139765
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 18:20:21 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id g16sf3675712plo.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 09:20:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578936019; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/Lw346IEY78uEM/MaEJHCBBxkgc/CjzdhQNeCJrU4rRL2qOU32G1VXIkORAa0vQvs
         Nv+mMVHyo7UWARa4fFmqVGG3SOHHgmR7fT5arU6Rwne5Ga1Lkxk8TmKaplC2PJ4xPf3A
         Bx/QkNJh/ZIdM8SvGoa4pV56OFeBLHodpTe6T/7FZ9rMS8A61cwYARzsDJIHd2m/7tWZ
         1Z5erzjBn9DqSMYCQcU2ZVN4mmKEfbVp4bNfOFxpv6dc3YGyOW4AQqGsoiM4ImyB9f5/
         Lly1vjugd9JdOr5VVenJaJxf+fltwp4OS9dgTxbF3meKprTLsYHuHPMLFPDPGGdwm7+7
         mLsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4BNQJyPX39ALzpoYpCJIZjciS6KK9qI6fqO0Rq/wpNA=;
        b=b2Bd2Ooi13wzAJKHh6MPGBIUUjHbMQwGfO9p/Mxr+4gtU0wMR6j+2nehgnz6sYr0pF
         UmN+xOCQG7BbpASDmX/i07zx9+I5ZkOGbJTCKU2/NWTWyA0gVHveNgvXv/uFet6yUr0I
         fdNJeY1MIoJblJpQXHlkB2AQycrp6Tt69OWZ+smw/iigKUcsH39Mx8tYyvHpZwTmfpgg
         2PT7Icl41xAHbxshMo5tQbtIzLZbVFXHAE6QPwLdrasPyR7Tnhe6JqsEa7KIZ0+WJGz/
         EVT0og8hPdWRFjSTfJhJCBE2V5YlB5s3Gm/4i1O2iYCKMlaFyBhSA72goTBupVZR0wFG
         g75w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZCKU4JGo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4BNQJyPX39ALzpoYpCJIZjciS6KK9qI6fqO0Rq/wpNA=;
        b=hSjjO6PZ8/2SGZMlVwVJlcXPlCiwycVQamPwHQTVdQS5Nb3Bd0QyQb570LYGmMY64u
         3FpqpOkzVG05LrytvceONFwgm6mcLJ9uWmVQ1qa8c4Wz3OHp82RKJ4vq0dcKvUwjYxKQ
         etkUUoEKHyWGzrtgHfBIw6dloMBU1exTRGWfcSV2gb0MQqOUQMaMa9BQ/WO90UgGsYI/
         EPOn6Ig4RBiATk9afFv/RNReDiwuWNIHflYnvT7V7V6r4THNKlEtsv62TiPe9xyfqKcx
         P/3k8p4VM+dMLIFvqLzMvqrY6xfuvE2H1/xmW871qLdJ1fEunEXb1rhHRkLKumm7Be5S
         rDng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4BNQJyPX39ALzpoYpCJIZjciS6KK9qI6fqO0Rq/wpNA=;
        b=i0d1LLb5ERxqVjFEMDrSP7fNwyk+A+5TWa07KfKygY3s2/NHBUZ5H+6kjDGatVwpaz
         fBkiUMCrxgTMSvxNpZgc7aXGEGP5igQ33oa0q8fwbnktOj8mYOWpJ5qfPkU7DDd5mw+l
         Jwi6i8Ngqk6+dC/2Noc81zCz7mkCLsknkUCmCQAZwYF2rMdTlqE5bWZVw2b7VUcEOEki
         CigGaq44ESLI8i9uC+4Wf4A1NnbkCOZB+wHa4JacT0hq5rAUPhwg9yPjma/tEHwrZADH
         /3fSxrkKNOHbAo5MQmMEdHTx8oul68k9m5rXFugMGvuyV6S6TM+JtFhek57Ua6Cu32q6
         cdbQ==
X-Gm-Message-State: APjAAAWJBd6xJYbu8zYHnrUP3x+OQ6R5Zw8jCwEgwnVGteiOzAA+JHOB
	robqFCcT1iirxi9/rkv5lZs=
X-Google-Smtp-Source: APXvYqzx7JyeWyMoHaBe0UQo/yYhLiUXMZ6wxALkL/mTgEkuR/UD9sQzaJipbIbiqWJPrGpNJ75Cvw==
X-Received: by 2002:a17:90a:b904:: with SMTP id p4mr23882360pjr.62.1578936019748;
        Mon, 13 Jan 2020 09:20:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d352:: with SMTP id i18ls4824163pjx.4.canary-gmail;
 Mon, 13 Jan 2020 09:20:19 -0800 (PST)
X-Received: by 2002:a17:902:9a05:: with SMTP id v5mr14537055plp.341.1578936019240;
        Mon, 13 Jan 2020 09:20:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578936019; cv=none;
        d=google.com; s=arc-20160816;
        b=gwjAaX+X9YdbhVsdYMoBlIsnWC2Xqb3I5/vAtSfeOVkt7cJ3KZQ5j4Dc/+7pjXIeUu
         xa1d6E0XIkx4IeAL8HlW3XxRsQEw8pcaukr1aC0vYXlAtYHqHSubtERo6ZbM7DP16Hed
         nE3/8BOzaq7152fbxugzADQKOJGdkLiM3Xh7YYtKBtyi7IAasCUQ+AYtyhnenr3uREtQ
         BcWghGLLnJe+lS0Begc0viuoGMdS53h3ybCgWebgFF+WnSrfNtuSzraTJjcXLoHpkjnH
         kuIQG+C/inOGw18lONYD+tDO64iyQ9PNjo9G6eIcHbGnsDZwv2pG4xjhgRGvGJHMwDk+
         PAVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zo80U+bVGVZbDvBqOQxlDNz0SpT9Nl53vf/RzdwU7ps=;
        b=drr/BwUBPFUlRnQxUKO2CALB/pZLjs3dVp6hcL82lXIDGF9IaFASBNKA6Zsfix8jc7
         +YB3SulrJ8u7Q+J/Bsk0ing8ilWqkX9jGKpcQevbuReyTibQstdEeqv52E0qKrVTlvbm
         zYX5+jC+qOdp8OO0SZhtT3iVpoXbbVx6DLPGb0QknDUn4MmMA9HBTIrvJdp3v8S8PwDx
         oo5nQ2JOVOZhESNnyi7QODn3qdhFIjSP8rPGeVZc54FIafpCa9FxJXdcMelRRWxWwxo9
         O76Hytbcx1Iqd9wwHgmec2yvtQRgWOJUp7+v3mCPnwELurF3pu+VpoVGhZUqd3uzLqIW
         SS3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZCKU4JGo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h19si527733pfn.1.2020.01.13.09.20.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 09:20:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id l24so5010846pgk.2
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 09:20:19 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr21476586pgk.381.1578936018608;
 Mon, 13 Jan 2020 09:20:18 -0800 (PST)
MIME-Version: 1.0
References: <202001112058.4xALCb72%lkp@intel.com>
In-Reply-To: <202001112058.4xALCb72%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jan 2020 09:20:07 -0800
Message-ID: <CAKwvOdmQovj9tDQ=MsAmNU_ghGqVnS9hAUNSWo_y2ACbhm8sZw@mail.gmail.com>
Subject: Re: [zanussi-trace:ftrace/synth-event-gen-v2 10/12]
 kernel/trace/trace_kprobe.c:974:17: warning: passing an object that undergoes
 default argument promotion to 'va_start' has undefined behavior
To: zanussi@kernel.org
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZCKU4JGo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Tom,
Below is a report from a 0day bot build w/ Clang, can you please take
a look? (Apologies if this has been previously reported).  In the
past, -Wvarargs warnings are usually related to the last parameter of
a va_arg function undergoing implicit promotion (which is explicitly
UB, IIRC).

On Sat, Jan 11, 2020 at 4:35 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Tom Zanussi <zanussi@kernel.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/zanussi/linux-trace.git ftrace/synth-event-gen-v2
> head:   91ee64186d5894724e276c4e7fad70446d7a02a7
> commit: 5f052546541d6cc5ad00e28aca6376c221db5c7e [10/12] tracing: Add kprobe event command generation functions
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 016bf03ef6fcd9dce43b0c17971f76323f07a684)
> reproduce:
>         git checkout 5f052546541d6cc5ad00e28aca6376c221db5c7e
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/trace/trace_kprobe.c:974:17: warning: passing an object that undergoes default argument promotion to 'va_start' has undefined behavior [-Wvarargs]
>            va_start(args, kretprobe);
>                           ^
>    kernel/trace/trace_kprobe.c:947:30: note: parameter of type 'bool' (aka '_Bool') is declared here
>                         const char *loc, bool kretprobe, ...)
>                                               ^
>    1 warning generated.
>
> vim +/va_start +974 kernel/trace/trace_kprobe.c
>
>    925
>    926  /**
>    927   * __gen_kprobe_cmd - Generate a synthetic event command from arg list
>    928   * @cmd: A pointer to the dynevent_cmd struct representing the new event
>    929   * @name: The name of the kprobe event
>    930   * @loc: The location of the kprobe event
>    931   * @kretprobe: Is this a return probe?
>    932   * @args: Variable number of arg (pairs), one pair for each field
>    933   *
>    934   * NOTE: Users normally won't want to call this function directly, but
>    935   * rather use the gen_kprobe_cmd() wrapper, which automatically adds a
>    936   * NULL to the end of the arg list.  If this function is used
>    937   * directly, make suer he last arg in the variable arg list is NULL.
>    938   *
>    939   * Generate a kprobe event command to be executed by
>    940   * create_dynevent().  This function can be used to generate the
>    941   * complete command or only the first part of it; in the latter case,
>    942   * add_probe_fields() can be used to add more fields following this.
>    943   *
>    944   * Return: 0 if successful, error otherwise.
>    945   */
>    946  int __gen_kprobe_cmd(struct dynevent_cmd *cmd, const char *name,
>    947                       const char *loc, bool kretprobe, ...)
>    948  {
>    949          char buf[MAX_EVENT_NAME_LEN];
>    950          struct dynevent_arg arg;
>    951          va_list args;
>    952          int ret;
>    953
>    954          if (cmd->type != DYNEVENT_TYPE_KPROBE)
>    955                  return -EINVAL;
>    956
>    957          if (kretprobe)
>    958                  snprintf(buf, MAX_EVENT_NAME_LEN, "r:%s", name);
>    959          else
>    960                  snprintf(buf, MAX_EVENT_NAME_LEN, "p:%s", name);
>    961
>    962          dynevent_arg_init(&arg, NULL, 0);
>    963          arg.str = buf;
>    964          ret = add_dynevent_arg(cmd, &arg);
>    965          if (ret)
>    966                  return ret;
>    967
>    968          dynevent_arg_init(&arg, NULL, 0);
>    969          arg.str = loc;
>    970          ret = add_dynevent_arg(cmd, &arg);
>    971          if (ret)
>    972                  return ret;
>    973
>  > 974          va_start(args, kretprobe);
>    975          for (;;) {
>    976                  const char *field;
>    977
>    978                  field = va_arg(args, const char *);
>    979                  if (!field)
>    980                          break;
>    981
>    982                  if (++cmd->n_fields > MAX_TRACE_ARGS) {
>    983                          ret = -EINVAL;
>    984                          break;
>    985                  }
>    986
>    987                  dynevent_arg_init(&arg, NULL, 0);
>    988                  arg.str = field;
>    989                  ret = add_dynevent_arg(cmd, &arg);
>    990                  if (ret)
>    991                          break;
>    992          }
>    993          va_end(args);
>    994
>    995          return ret;
>    996  }
>    997  EXPORT_SYMBOL_GPL(__gen_kprobe_cmd);
>    998
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmQovj9tDQ%3DMsAmNU_ghGqVnS9hAUNSWo_y2ACbhm8sZw%40mail.gmail.com.
