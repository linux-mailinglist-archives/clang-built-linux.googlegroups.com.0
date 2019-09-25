Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL63V7WAKGQE2W5HFVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 651B1BE868
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 00:44:01 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 194sf298203pfu.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 15:44:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569451440; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vwg5l2O6KV/+CB5y6iyuV0pRwAQGcb3X1TVaA/pFL3luDmS23xeFFOuTwOr8Pb+dW5
         GKj0tSWOfG7H7CJA1uT2kOOlDbw+SWWzLt5LP5OMgb+gnjlhQ8i6dKpECiqSLr6HRVe3
         XlG2PnTCRpw9yEsXacoq7Vc0qfp8wYRyQV/+zeSsKNLv5Cc89NNs+x8s1ToEsFxllk8C
         a+e6lyRMJnL2n+MpZ7b9vhPuSs/2Jdonp3Tq7P+OG/c8kn/0w0A5iHrn710C8zcChnv+
         /9lgSNazSvcNVM3DnPowcV7ZlaYZrPB0fbHCJ3fJjx66gUF/QP4dW1rqZualKMtqRIHh
         6bDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=UxjD8h/V8iUAMhf/VF4leiS5WrpqWWxO5tV6bEN2/Kk=;
        b=UaGEu+Up7+m0G4Sfvc5L01p59dTb3eZJxFu3qhzI3aP+Tmhyu8ZuuIkVfq/xj8GoYV
         kOTJB+1GA82b4o+3YARPN9NrqeGXNOrKyLErRQUQYG1ZVGVecGQGXUPF3GrppHpZ3uPh
         nRlUM24t1VgcmIGKRdNOtRDRd6RWjnfYc+NAZrTkHTgEX15fxqmArhUwBzQF61+mPQe6
         V9inuwkYhcXiLKvJzFFzIeldLqal+FteHrWqU23REHFRoSHutIfnn7SpHZtq17gNKoYs
         Om8Z5WGzIxprnvYGdDDf/Msi9j2CA3sKgqGVb7Y3LxskU2/hl23OHdN+hh8Dn3S9UYfx
         taRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UxjD8h/V8iUAMhf/VF4leiS5WrpqWWxO5tV6bEN2/Kk=;
        b=nXtLN6/GA4KDlZrXeZACKtobp0MsOB2WXTp+LyW86wwiuMdD4GEE8mfqJQt0cZduFh
         Sko5V/LWDEBzGvoyGKy/rCrJxBn6NQGrY/Kn34WJ2N85RJqYo9kR6j35mNHqSRZkTShF
         OMswjJtYYLKD5yMkHF6EB9gXsoOW1uCvZVhzNyAZ9nObfy3Cjv13cYjlMPKOB+4ndXAR
         z/WIKmf8mdFm6TtFfO0YomqDBUjynG4Fm4cGQllwRnMzsB/0QCr51iePEaQHNyNRu3OX
         SPlZNiYWcwDmbIy1EHgwcSVlsuJPp9a+7bUxDjDTlaHmZOj3TSlpfBPyTKrUC9Gif9gn
         8oMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UxjD8h/V8iUAMhf/VF4leiS5WrpqWWxO5tV6bEN2/Kk=;
        b=LyfLIFlmy4ON4XI6BgW4OWOZSxY7fkzuri98kEg+x2KGqCgeT7wJVvD5hW3a0vv3gM
         ejc3AiDLL8I+WXyu4OMHxzxpU65I8+jNwdm3/9sZO0ybFRNfrcgl+ws8HMCezfiN34/M
         A2Ac8ofi9B2x1nDc0l/rSsZtcdyBTw+F76Wsado1VWzmsqHvKPO+2NFOPvzaKQ4CnW03
         BdHF6BMCWqkmRSMR2L2ETYZeXMFbVq0xroBVEa4i+/+6CQZvFo0H9jh6nmb5EkmWUCSC
         NDVsGsv3UBXVeBestNQEdqWX20pDD2FFveXntKdBBptATZ0GznDSDM4JDbW7e11ex3Mi
         6QMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFJlBHjI/qfKPSYQQZGppztOJCgVMKdcXFrT5QnGttFynXbCBW
	zGtlSnmqRP1JenI6CMQsJfQ=
X-Google-Smtp-Source: APXvYqw9+qKm3ut8T2BK+P6D+hnxY2QJ+rFLMlsM9YO/pDG0VQIjrCXVu6OWgIP1ARtnz0xSukw1PQ==
X-Received: by 2002:a17:902:9a49:: with SMTP id x9mr499642plv.244.1569451439613;
        Wed, 25 Sep 2019 15:43:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b413:: with SMTP id x19ls111011plr.10.gmail; Wed, 25
 Sep 2019 15:43:59 -0700 (PDT)
X-Received: by 2002:a17:90a:fa0d:: with SMTP id cm13mr88897pjb.70.1569451439002;
        Wed, 25 Sep 2019 15:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569451438; cv=none;
        d=google.com; s=arc-20160816;
        b=bBUZlWipuet7NdJ1UC53vfT+FErbF/hdljwacHQ3Vl5XtDMTDcy3DRl/HY+TcVzfsh
         v8sXOslbe+NTxREsNgXwOue2HIkGtj+8W9TJGJweq2FtmhCKG6lDFKszhIkN/JWecZkE
         9eg64G33rPzzLax2jhp/o+jPNZvpJPXgZbrfUpi0aEJi5oV4IwH1WYsjL9eqgKFVapn2
         XvHNQvg1vHOgJfXa8XPT+u8AZskVTdpPa9wC2gXCU/OKxvuYFnxRwuzARygrBEPsCMF1
         tsNbSDqa+//lPNIKgUR7oyLedAiAe8YPyzdW2PGN8fSUoTkhFS6VcQjM/DVWo4bkeO1s
         smGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=5OAdheC+xG5gZvWzOAxu3EcCRO1W1vkphD0eIad7v6M=;
        b=hbuzNtiSVymdChDet5QaCQi1ErfmuHj3jehXk//KY+SFlqlLDMHneoCXWdAZXISW13
         OdqHi/ILDYvtBAgGMwm7c+idTd7ve/X39PTj81H98+OiQ7xVtDmIg6f0stNeah6koXo9
         e3J3AQ7fvYiQhRK6x1Jo//a4FIeIDJVYsdZ+mxZvpV5V/uZxQWMoFfjxU9MUze7988s7
         IH02xr0Ub2mq1QDz00Wln/WuWV0X08oL8SUUdHVYaewyZXfrdZcDCvs9Nr7Z/ZVllg3D
         /8wj4OjpqGbpNonRSHcMOwZ7nhrpeag6mfWnHI86ZBtAOZj+zz7JuxFcub3qdBn4ogyO
         sh3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id d8si7857pjv.1.2019.09.25.15.43.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 15:43:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Sep 2019 15:43:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; 
   d="gz'50?scan'50,208,50";a="364473591"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 25 Sep 2019 15:43:56 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iDG0p-000J6i-W2; Thu, 26 Sep 2019 06:43:55 +0800
Date: Thu, 26 Sep 2019 06:43:48 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] audit: Report suspicious O_CREAT usage
Message-ID: <201909260632.Mu7oV2YQ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3f4kmh6tzaebjw2r"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--3f4kmh6tzaebjw2r
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <201909251348.A1542A52@keescook>
References: <201909251348.A1542A52@keescook>
TO: Kees Cook <keescook@chromium.org>
CC: Paul Moore <paul@paul-moore.com>, linux-kernel@vger.kernel.org, "J=C3=
=A9r=C3=A9mie Galarneau" <jeremie.galarneau@efficios.com>, s.mesoraca16@gma=
il.com, viro@zeniv.linux.org.uk, dan.carpenter@oracle.com, akpm@linux-found=
ation.org, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, kernel-harde=
ning@lists.openwall.com, linux-audit@redhat.com, torvalds@linux-foundation.=
org, linux-kernel@vger.kernel.org, "J=C3=A9r=C3=A9mie Galarneau" <jeremie.g=
alarneau@efficios.com>, s.mesoraca16@gmail.com, viro@zeniv.linux.org.uk, da=
n.carpenter@oracle.com, akpm@linux-foundation.org, Mathieu Desnoyers <mathi=
eu.desnoyers@efficios.com>, kernel-hardening@lists.openwall.com, linux-audi=
t@redhat.com, torvalds@linux-foundation.org
CC: linux-kernel@vger.kernel.org, "J=C3=A9r=C3=A9mie Galarneau" <jeremie.ga=
larneau@efficios.com>, s.mesoraca16@gmail.com, viro@zeniv.linux.org.uk, dan=
.carpenter@oracle.com, akpm@linux-foundation.org, Mathieu Desnoyers <mathie=
u.desnoyers@efficios.com>, kernel-hardening@lists.openwall.com, linux-audit=
@redhat.com, torvalds@linux-foundation.org

Hi Kees,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.3 next-20190924]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Kees-Cook/audit-Report-sus=
picious-O_CREAT-usage/20190926-050423
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 06b3e3421af6d8=
bf027a19133380833c2df0ffb9)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from kernel/signal.c:48:
   include/linux/audit.h:222:1: error: expected identifier or '('
   { }
   ^
>> kernel/signal.c:137:37: warning: array index 3 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
           case 4: ready  =3D signal->sig[3] &~ blocked->sig[3];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:137:19: warning: array index 3 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
           case 4: ready  =3D signal->sig[3] &~ blocked->sig[3];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:138:30: warning: array index 2 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
                   ready |=3D signal->sig[2] &~ blocked->sig[2];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:138:12: warning: array index 2 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
                   ready |=3D signal->sig[2] &~ blocked->sig[2];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:139:30: warning: array index 1 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
                   ready |=3D signal->sig[1] &~ blocked->sig[1];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:139:12: warning: array index 1 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
                   ready |=3D signal->sig[1] &~ blocked->sig[1];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:143:37: warning: array index 1 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
           case 2: ready  =3D signal->sig[1] &~ blocked->sig[1];
                                              ^            ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   kernel/signal.c:143:19: warning: array index 1 is past the end of the ar=
ray (which contains 1 element) [-Warray-bounds]
           case 2: ready  =3D signal->sig[1] &~ blocked->sig[1];
                            ^           ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   8 warnings and 1 error generated.

vim +137 kernel/signal.c

b48345aafb2038 Richard Guy Briggs   2019-05-10  @48  #include <linux/audit.=
h>
52f5684c8e1ec7 Gideon Israel Dsouza 2014-04-07   49 =20
d1eb650ff41309 Masami Hiramatsu     2009-11-24   50  #define CREATE_TRACE_P=
OINTS
d1eb650ff41309 Masami Hiramatsu     2009-11-24   51  #include <trace/events=
/signal.h>
84d737866e2bab Sukadev Bhattiprolu  2006-12-08   52 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16   53  #include <asm/param.h>
7c0f6ba682b9c7 Linus Torvalds       2016-12-24   54  #include <linux/uacces=
s.h>
^1da177e4c3f41 Linus Torvalds       2005-04-16   55  #include <asm/unistd.h=
>
^1da177e4c3f41 Linus Torvalds       2005-04-16   56  #include <asm/siginfo.=
h>
d550bbd40c0e10 David Howells        2012-03-28   57  #include <asm/cacheflu=
sh.h>
^1da177e4c3f41 Linus Torvalds       2005-04-16   58 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16   59  /*
^1da177e4c3f41 Linus Torvalds       2005-04-16   60   * SLAB caches for sig=
nal bits.
^1da177e4c3f41 Linus Torvalds       2005-04-16   61   */
^1da177e4c3f41 Linus Torvalds       2005-04-16   62 =20
e18b890bb0881b Christoph Lameter    2006-12-06   63  static struct kmem_cac=
he *sigqueue_cachep;
^1da177e4c3f41 Linus Torvalds       2005-04-16   64 =20
f84d49b218b7d4 Naohiro Ooiwa        2009-11-09   65  int print_fatal_signal=
s __read_mostly;
f84d49b218b7d4 Naohiro Ooiwa        2009-11-09   66 =20
35de254dc60f91 Roland McGrath       2008-07-25   67  static void __user *si=
g_handler(struct task_struct *t, int sig)
^1da177e4c3f41 Linus Torvalds       2005-04-16   68  {
35de254dc60f91 Roland McGrath       2008-07-25   69  	return t->sighand->ac=
tion[sig - 1].sa.sa_handler;
35de254dc60f91 Roland McGrath       2008-07-25   70  }
^1da177e4c3f41 Linus Torvalds       2005-04-16   71 =20
e4a8b4efbfdf8c Christian Brauner    2018-08-21   72  static inline bool sig=
_handler_ignored(void __user *handler, int sig)
35de254dc60f91 Roland McGrath       2008-07-25   73  {
93585eeaf3d42d Pavel Emelyanov      2008-04-30   74  	/* Is it explicitly o=
r implicitly ignored? */
93585eeaf3d42d Pavel Emelyanov      2008-04-30   75  	return handler =3D=3D=
 SIG_IGN ||
93585eeaf3d42d Pavel Emelyanov      2008-04-30   76  	       (handler =3D=
=3D SIG_DFL && sig_kernel_ignore(sig));
93585eeaf3d42d Pavel Emelyanov      2008-04-30   77  }
93585eeaf3d42d Pavel Emelyanov      2008-04-30   78 =20
41aaa481197dc5 Christian Brauner    2018-08-21   79  static bool sig_task_i=
gnored(struct task_struct *t, int sig, bool force)
93585eeaf3d42d Pavel Emelyanov      2008-04-30   80  {
35de254dc60f91 Roland McGrath       2008-07-25   81  	void __user *handler;
^1da177e4c3f41 Linus Torvalds       2005-04-16   82 =20
f008faff0e2777 Oleg Nesterov        2009-04-02   83  	handler =3D sig_handl=
er(t, sig);
f008faff0e2777 Oleg Nesterov        2009-04-02   84 =20
86989c41b5ea08 Eric W. Biederman    2018-07-19   85  	/* SIGKILL and SIGSTO=
P may not be sent to the global init */
86989c41b5ea08 Eric W. Biederman    2018-07-19   86  	if (unlikely(is_globa=
l_init(t) && sig_kernel_only(sig)))
86989c41b5ea08 Eric W. Biederman    2018-07-19   87  		return true;
86989c41b5ea08 Eric W. Biederman    2018-07-19   88 =20
f008faff0e2777 Oleg Nesterov        2009-04-02   89  	if (unlikely(t->signa=
l->flags & SIGNAL_UNKILLABLE) &&
ac25385089f673 Oleg Nesterov        2017-11-17   90  	    handler =3D=3D SI=
G_DFL && !(force && sig_kernel_only(sig)))
41aaa481197dc5 Christian Brauner    2018-08-21   91  		return true;
f008faff0e2777 Oleg Nesterov        2009-04-02   92 =20
33da8e7c814f77 Eric W. Biederman    2019-08-16   93  	/* Only allow kernel =
generated signals to this kthread */
33da8e7c814f77 Eric W. Biederman    2019-08-16   94  	if (unlikely((t->flag=
s & PF_KTHREAD) &&
33da8e7c814f77 Eric W. Biederman    2019-08-16   95  		     (handler =3D=3D=
 SIG_KTHREAD_KERNEL) && !force))
33da8e7c814f77 Eric W. Biederman    2019-08-16   96  		return true;
33da8e7c814f77 Eric W. Biederman    2019-08-16   97 =20
f008faff0e2777 Oleg Nesterov        2009-04-02   98  	return sig_handler_ig=
nored(handler, sig);
f008faff0e2777 Oleg Nesterov        2009-04-02   99  }
f008faff0e2777 Oleg Nesterov        2009-04-02  100 =20
6a0cdcd78892d4 Christian Brauner    2018-08-21  101  static bool sig_ignore=
d(struct task_struct *t, int sig, bool force)
f008faff0e2777 Oleg Nesterov        2009-04-02  102  {
^1da177e4c3f41 Linus Torvalds       2005-04-16  103  	/*
^1da177e4c3f41 Linus Torvalds       2005-04-16  104  	 * Blocked signals ar=
e never ignored, since the
^1da177e4c3f41 Linus Torvalds       2005-04-16  105  	 * signal handler may=
 change by the time it is
^1da177e4c3f41 Linus Torvalds       2005-04-16  106  	 * unblocked.
^1da177e4c3f41 Linus Torvalds       2005-04-16  107  	 */
325d22df7b19e0 Roland McGrath       2007-11-12  108  	if (sigismember(&t->b=
locked, sig) || sigismember(&t->real_blocked, sig))
6a0cdcd78892d4 Christian Brauner    2018-08-21  109  		return false;
^1da177e4c3f41 Linus Torvalds       2005-04-16  110 =20
35de254dc60f91 Roland McGrath       2008-07-25  111  	/*
628c1bcba20405 Oleg Nesterov        2017-11-17  112  	 * Tracers may want t=
o know about even ignored signal unless it
628c1bcba20405 Oleg Nesterov        2017-11-17  113  	 * is SIGKILL which c=
an't be reported anyway but can be ignored
628c1bcba20405 Oleg Nesterov        2017-11-17  114  	 * by SIGNAL_UNKILLAB=
LE task.
35de254dc60f91 Roland McGrath       2008-07-25  115  	 */
628c1bcba20405 Oleg Nesterov        2017-11-17  116  	if (t->ptrace && sig =
!=3D SIGKILL)
6a0cdcd78892d4 Christian Brauner    2018-08-21  117  		return false;
628c1bcba20405 Oleg Nesterov        2017-11-17  118 =20
628c1bcba20405 Oleg Nesterov        2017-11-17  119  	return sig_task_ignor=
ed(t, sig, force);
^1da177e4c3f41 Linus Torvalds       2005-04-16  120  }
^1da177e4c3f41 Linus Torvalds       2005-04-16  121 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16  122  /*
^1da177e4c3f41 Linus Torvalds       2005-04-16  123   * Re-calculate pendin=
g state from the set of locally pending
^1da177e4c3f41 Linus Torvalds       2005-04-16  124   * signals, globally p=
ending signals, and blocked signals.
^1da177e4c3f41 Linus Torvalds       2005-04-16  125   */
938696a82974c3 Christian Brauner    2018-08-21  126  static inline bool has=
_pending_signals(sigset_t *signal, sigset_t *blocked)
^1da177e4c3f41 Linus Torvalds       2005-04-16  127  {
^1da177e4c3f41 Linus Torvalds       2005-04-16  128  	unsigned long ready;
^1da177e4c3f41 Linus Torvalds       2005-04-16  129  	long i;
^1da177e4c3f41 Linus Torvalds       2005-04-16  130 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16  131  	switch (_NSIG_WORDS) =
{
^1da177e4c3f41 Linus Torvalds       2005-04-16  132  	default:
^1da177e4c3f41 Linus Torvalds       2005-04-16  133  		for (i =3D _NSIG_WOR=
DS, ready =3D 0; --i >=3D 0 ;)
^1da177e4c3f41 Linus Torvalds       2005-04-16  134  			ready |=3D signal->=
sig[i] &~ blocked->sig[i];
^1da177e4c3f41 Linus Torvalds       2005-04-16  135  		break;
^1da177e4c3f41 Linus Torvalds       2005-04-16  136 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16 @137  	case 4: ready  =3D si=
gnal->sig[3] &~ blocked->sig[3];
^1da177e4c3f41 Linus Torvalds       2005-04-16  138  		ready |=3D signal->s=
ig[2] &~ blocked->sig[2];
^1da177e4c3f41 Linus Torvalds       2005-04-16  139  		ready |=3D signal->s=
ig[1] &~ blocked->sig[1];
^1da177e4c3f41 Linus Torvalds       2005-04-16  140  		ready |=3D signal->s=
ig[0] &~ blocked->sig[0];
^1da177e4c3f41 Linus Torvalds       2005-04-16  141  		break;
^1da177e4c3f41 Linus Torvalds       2005-04-16  142 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16  143  	case 2: ready  =3D si=
gnal->sig[1] &~ blocked->sig[1];
^1da177e4c3f41 Linus Torvalds       2005-04-16  144  		ready |=3D signal->s=
ig[0] &~ blocked->sig[0];
^1da177e4c3f41 Linus Torvalds       2005-04-16  145  		break;
^1da177e4c3f41 Linus Torvalds       2005-04-16  146 =20
^1da177e4c3f41 Linus Torvalds       2005-04-16  147  	case 1: ready  =3D si=
gnal->sig[0] &~ blocked->sig[0];
^1da177e4c3f41 Linus Torvalds       2005-04-16  148  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  149  	return ready !=3D	0;
^1da177e4c3f41 Linus Torvalds       2005-04-16  150  }
^1da177e4c3f41 Linus Torvalds       2005-04-16  151 =20

:::::: The code at line 137 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201909260632.Mu7oV2YQ%25lkp%40intel.com.

--3f4kmh6tzaebjw2r
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--3f4kmh6tzaebjw2r--
