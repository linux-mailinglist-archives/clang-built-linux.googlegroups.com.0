Return-Path: <clang-built-linux+bncBD4NPLXYE4INB5N6QUDBUBGVFDFCK@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90C393271
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 17:29:21 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id e28-20020a19501c0000b029020ca0c731b4sf164396lfb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 08:29:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622129361; cv=pass;
        d=google.com; s=arc-20160816;
        b=m4rk56+2P1Rsfrodxl46rt96YXfdasg1ywXaYH9TWZeCGsdNl59fCy38ZaPUuPn0ew
         x6VnzA1aJvt3aeVFWwwmvbjc7wBfjJr23bKfsIRcy1vrjb40JqHHXlQfNGXGmt1dEqUw
         TzAgf5plXoEOY1dXk7nyhdbdXGs4ywuodwOVtc9MAOYk9MMGJWMJkOeXiQ83HzjzlKOK
         l/Xjdzo92ZHhetR+EV8x+J8PokIUag4NhXxEZJ70J8LAHWlj6+GUBU2McO9kiIkpiNme
         IaoQCpnRngN27n5mtACKtdq3Y+tI3BLrFNvG0YzxtLS7sYlYVIX87eBSewwzhRTYReuR
         oI+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=m8AGfVZP70nWEmFLeghzUEWCzv+XQez8/PZzCD8w8nQ=;
        b=uxOqcPv98330nOOaudl15IXp7abo7a6hAwExoB5nGxwgwbog2/anbOm5NIshJlb5BD
         XdGG9/iD1+O/syxsDZ+3iSiAMd1RfCoWtQ/vMQ6BDvPdWx278/+c6EriyHi0ZmBv7fCr
         5parl7SnGbGuSSbd+1VSP/d4s++wW2N+9OJSEFi3f7I1qxcxAi/HT6IC+9euUQNibQE0
         k3rM3/0eQydhyg4srn3Qn+HfP8VB1qITSUqlueAMIFfNPITotiMtspXT/ffo3tWe/oZg
         0bmQ3bKTAjSxnBDJcmEA110Ohg0oQMrI4ZqdVqgRZj3pxnIuisKvSUYG/OpihIoTZs1j
         sEPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=fA0T0+DS;
       spf=neutral (google.com: 2a00:1450:4864:20::634 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8AGfVZP70nWEmFLeghzUEWCzv+XQez8/PZzCD8w8nQ=;
        b=GpvK6+/58BchKlF4s74U/1zo3uaLyAqSYO3cDh/Tb9OVJt6MTBNosP7rojoag5noQL
         0ue89djEGzPHsOwhY9IqFS75xjKTlJos2/8mJt1zKqt6JMCcY5VUNCKjRs2bbteFgwDx
         8wvlah2JV5NmTl7jQ1+tXlelYMyA0nopBfSF+nAwAhIEi+d/qC+cIjMa5EuwWbhzdMgH
         Gj5apKbsgdQXc/UPmy+nP21XXyAYwqIUFFLq1kt5KNFNQC/OAI6brT5Hprqs5rMk8kKB
         Pru4Hygsxocg4WnZ8AfoRoRinI81i+VhutUd4Fi7G/km16SPQlzOEXFtRpa94w4Si7G2
         p1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8AGfVZP70nWEmFLeghzUEWCzv+XQez8/PZzCD8w8nQ=;
        b=dBUF0IwV2ERQ3H+UtD3ZQ2xLZ3oO6lRcPwcZcEV6gQimoo2C2Acqz7zOFmQGkUeJGE
         rUb8lmPdAporKMGEGkPK2bDJFo5rlOv4f27GG8vnUL1D2hWhpZx0NSb62DhCd3pMYaj1
         J8PqsatvWtVq12aAHlm3kCVjk1akACDonV+8ULWZJMTGkctFxXlwhtP8m2Ju1kyuZYTF
         PwB2H97cX3SczAeqrR3lhDNg04a8DjFVIUX+uFh5le35m0zHRXbAsnffX9oEQztTVYUj
         GzpAwLdYbzgpaK7Gz9yPqf51SvasxtccIzXeG08rzCupGzdHN/zA5pSdvFnBs+LAyBx0
         BcJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tR8+cF30LA/1gyNLL4lWg/OeSsGnTyyzNu7IjHSemG0yZKBcA
	3GTN+B0cIbmx7zXnMi1Q0bk=
X-Google-Smtp-Source: ABdhPJz2yh0rdw9Ema4WR3+nQuV4lnp/B26j8/wZAesFrvE1pLv2/CVA333poja2I54UwX80X3XldA==
X-Received: by 2002:ac2:4c81:: with SMTP id d1mr2835988lfl.130.1622129361110;
        Thu, 27 May 2021 08:29:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls835891lfa.0.gmail; Thu, 27
 May 2021 08:29:20 -0700 (PDT)
X-Received: by 2002:a19:ad44:: with SMTP id s4mr2714006lfd.563.1622129360090;
        Thu, 27 May 2021 08:29:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622129360; cv=none;
        d=google.com; s=arc-20160816;
        b=V68gCjM9iH+SJwqf+uJJF4vVuIt8h6YqRRzLVEy0h0rZ7hwOrvnSRcOAjHb/PvL3c+
         eHVXV7lQJCs47E5SVwCPg5NGIgplvOWCR5MeXibtRtyieOjv7zm70CMkXjK6mYW8XqaA
         yoP/KvQMZ4kL9VX2ZTeVjoRI91psxxbfsNtOoAGbbR8aoWIUtIzupEzL0+xQWes0UYIX
         Nq0S6YtlJip2gmL8TY6UpSO/0R0WWCVqQ/I2AC3D9gHtz6rlEfdIn0Ywa8XmBFO8lFff
         bgduRPx8tnDs6hX/CafuGtFwmD56uFph2F7G7w7sfInXayhfUeix7ydAhIqC2/1WpwzY
         538g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HAQr2qiq3N8RTZk7F9BSuKYf0jS/AKKdmZIsfwm5p5s=;
        b=ARi7VgjsfiJBjFeSP0uQFf9hwh7nud94CCuDRfIqfISgQHwXMwtN/6BspHg5dGcpd3
         NPvZWnBU6uqSMYjrQNO2csHaj31sjjsPEkgSYRfS+C8xuz+WJHw+SelAfKuMO0cP+KFf
         dadY8UEtLSSMxEdDk+A2xzVACAJSxX7k2Pkspi362iGTphoOrOihr+xGB4rnAbx24Su+
         Vl8LDsC3CZ05D5hYcqx13cvBwnM3Xbjeecp+KJ7Olnihu2AFWzDj0MGgjaJHyaw4IgG9
         UCmUFjgzuhYob7C2Vu7bI3TRkwfHj50bn+onvly23VKE1MJASbfalJgNozYBtnU3xseY
         CMCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=fA0T0+DS;
       spf=neutral (google.com: 2a00:1450:4864:20::634 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id 81si86625lff.11.2021.05.27.08.29.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 08:29:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::634 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id lz27so685072ejb.11
        for <clang-built-linux@googlegroups.com>; Thu, 27 May 2021 08:29:19 -0700 (PDT)
X-Received: by 2002:a17:907:10d8:: with SMTP id rv24mr4337161ejb.542.1622129359636;
 Thu, 27 May 2021 08:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <202105270909.1fgRW8Wk-lkp@intel.com>
In-Reply-To: <202105270909.1fgRW8Wk-lkp@intel.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 27 May 2021 11:29:08 -0400
Message-ID: <CAHC9VhRy=oD=B9G_ZZejPX0dL1+vsyLkYLs59vj-SJoeVMs53g@mail.gmail.com>
Subject: Re: [pcmoore-selinux:working-io_uring 9/9] security/smack/smack_lsm.c:4702:5:
 warning: no previous prototype for function 'smack_uring_override_creds'
To: kernel test robot <lkp@intel.com>
Cc: Casey Schaufler <casey@schaufler-ca.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, selinux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: paul@paul-moore.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623
 header.b=fA0T0+DS;       spf=neutral (google.com: 2a00:1450:4864:20::634 is
 neither permitted nor denied by best guess record for domain of
 paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
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

On Wed, May 26, 2021 at 9:51 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git working-io_uring
> head:   1f25193a3f5495eefbc9826b1de1a008a2439351
> commit: 1f25193a3f5495eefbc9826b1de1a008a2439351 [9/9] Smack: Brutalist io_uring support with debug
> config: x86_64-randconfig-r013-20210526 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git/commit/?id=1f25193a3f5495eefbc9826b1de1a008a2439351
>         git remote add pcmoore-selinux https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git
>         git fetch --no-tags pcmoore-selinux working-io_uring
>         git checkout 1f25193a3f5495eefbc9826b1de1a008a2439351
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> security/smack/smack_lsm.c:4702:5: warning: no previous prototype for function 'smack_uring_override_creds' [-Wmissing-prototypes]
>    int smack_uring_override_creds(const struct cred *new)
>        ^
>    security/smack/smack_lsm.c:4702:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int smack_uring_override_creds(const struct cred *new)
>    ^
>    static
> >> security/smack/smack_lsm.c:4739:5: warning: no previous prototype for function 'smack_uring_sqpoll' [-Wmissing-prototypes]
>    int smack_uring_sqpoll(void)
>        ^
>    security/smack/smack_lsm.c:4739:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int smack_uring_sqpoll(void)
>    ^
>    static
>    2 warnings generated.

FYI, Casey I took the liberty of making the Smack functions static (I
had made the same mistake with the SELinux code).

-- 
paul moore
www.paul-moore.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHC9VhRy%3DoD%3DB9G_ZZejPX0dL1%2BvsyLkYLs59vj-SJoeVMs53g%40mail.gmail.com.
