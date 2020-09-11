Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPNA5T5AKGQE3M5NDGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 501042658F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 07:50:55 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id c78sf7846548ybf.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 22:50:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599803454; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZNIsRQyc/EahIIcGeN3VWRlNJ84FXoVcj+MF/a6lV35Th+eeVH9D43Rq630GQNckn
         Z+HyZJMRsYtLg2t3tncJxR7pRYxBnlQfU4HwwesYAdNfpjuBU0G9sr7iGr3/EcaODME/
         osNXFMuOfinWlcfbsf3unYt+/RWKqMcAL2o2i3V2VTQRwAtlHvqAGwI+SMwkQgtq+R8w
         ASUqSydz/c90M0WmumJZVlU88lXpK1Q/f0TDRZho31Ys/tCVBnbZYXU1f5fWPlF+Nk7g
         ve4hdNb2zhGv8cycRW9MmIQzXilQywl2Rn0g1eLmoNgil0zWx12vcoRVzqW9O1AGqszu
         GT5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=oJ0WLml0VU7vr96670UvnAysv8rwm/hjp8GoKycPYIc=;
        b=abAfwE1MoiAsy3og6KeN3oNR5bDCRZrQK41J83XDihj5rDNcVN7qg0zZF3Fthay8Qn
         ZTOxgeNpvUc9XlSPfKXwDYQc5ZbU1URoxfKii+29RuWJy0Bv4DSMnuofKe2k/RyjUqaN
         HwiDhQvY8QtWF9zKgAmH00YRAc8/4UMJZiHQdYEsA3KHkewe5tr8fbNxmN++VXNfv3+u
         SH/tlDJBlrmBR9QpmekrwiYG/dLxsORe0WXcd1hzw48FnovhmRyIuHwxzvqigkIPnyO8
         w+r4GrmpvWhJFZp48U4TNBoxWFxlTcL5PM2wjaOrTwoCYwc48I3cPaMjk4MIN2ZCYH95
         0rqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TLF9ThUw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJ0WLml0VU7vr96670UvnAysv8rwm/hjp8GoKycPYIc=;
        b=VirTiwhxh3LQIEFkz0kZf3fprXBhLRqxEhfIs/BUmaWUmYkdcTLK1DnnVQ9ZBtS6ye
         YD+yP4h6r3yT+FjMfYGhPzZvjqFang5/fvtEYTiNJJF6KtFrK9UYrVbm/39XJPsRE9gM
         3oYN79X0+98dOr7dlLVP7b0+Wk3kXr7bAHBgdSJCjolwC9F5rcffVy0aOD7NTh0d+u0R
         fh9nmMJLt59vo4v1wxe9v/Wg6B8tDC7UfOo45KwHemTUXNIxEFxVUHHrG/tMki1lkUjy
         y5oZ5LWED32LB+9D/boT98NdS/2mRNcxPCiXSYbr0sLnJOiG20jyKi7c2bVLFjaZBINz
         OlkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJ0WLml0VU7vr96670UvnAysv8rwm/hjp8GoKycPYIc=;
        b=Htw+IdIaARdGEDqWg/oQ149UxnzEzkapj7iaHoKujQsLXk3My1inyfKHe8fllsc/jL
         /Z5VYORrAJRmjGtmavlvmGZo71ac0hU9bkgkONxGHrYtUKXveNNMGTY7Hwa6/Eb1rRXX
         P5eGd7p3ci+kS95/agiEtFkTWmLd5dtXOB1T/wH35XoCIVcIHdd30KVuJbz6JAMQUFmz
         q00JCUQdwU71jCk5ZgKTB6KEnQcVyv5fsrn3JvF4cfFQFDrCBrw6oHqslCsokR3yfUOr
         TF9VaAl07cUU5bB8DN2hUN6Y27ITfIIWiKduiNjt7kiUahspiomfUYg7/gpzmbb++bGu
         PMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJ0WLml0VU7vr96670UvnAysv8rwm/hjp8GoKycPYIc=;
        b=UWLsjx+DyvRKM04+4FWbf2rETjtUp+HDxthLhU4ydqpBoRLmQQM0oOW4g++jamz4Ga
         IIf8l98PG0Pr2uR+N9KxsipbgGswJ4dNB25ROnS+JA7gAtaJUu2+crCUwJ6FYHJXgAmO
         UCpFzfCOE5VgRfrDVoW6vFF5YAjPt46DViu3P9pZuN1keTZrNCM1hfKswY4epBndQEcP
         d8W/bbcfziNrueoJNai4Jzb+SACVGxbdTBLJ/23shEd7/aF/F5+WWW6RPxuQ5t8SlCMX
         H+j2KUs3mebhXL1JwrhGRQthvQ/kDASjeSMIyM06IAaN/t+zn7NOQMX62Fdr/0Uyucsb
         F8zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SCLzMc+6LvQF5cpndPfsUzN8CK3wjpIqkcu7KlgN+Rql9tAvO
	FSNWLMehi2AKREQJOLViyMk=
X-Google-Smtp-Source: ABdhPJwTh1gHE+iQLrzun589kWLJv4vOrpiDZ2xGC4d4fuNAL9xIb8vO+1X1ZVKs3hboe38DAA8DhQ==
X-Received: by 2002:a25:b111:: with SMTP id g17mr246786ybj.483.1599803453912;
        Thu, 10 Sep 2020 22:50:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2acb:: with SMTP id q194ls541983ybq.2.gmail; Thu, 10 Sep
 2020 22:50:53 -0700 (PDT)
X-Received: by 2002:a25:ab2e:: with SMTP id u43mr305345ybi.302.1599803453274;
        Thu, 10 Sep 2020 22:50:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599803453; cv=none;
        d=google.com; s=arc-20160816;
        b=vWqdn47jdyrPs0L4S+47yDo7p9oQfCCuaqcpuLHzYXgply88vfDmVY0BpuSu2yW4u9
         Inn0d9v8/CBcpHgo1L1jB3wIPlhwKfFn0098zNKc6ocyUive6MSaghr3vQ1tTXKUTqSH
         l5c50sYkcjachdMVQ4wIVJuIODFYsJB/FX/sVKzVFAgEuQ3Os9gsUdRnWCgdMpcyZpmc
         uL6y1vI7wWkUQ4YjiZzFsbbLbelwPM0uAZC3XycZumK+OrzHazuVqtH8h9upKsPy6oKd
         nJuIyxBMbrSfvX3Qe2d973GBUOB4kr4Cw+H2+I8VqFNT0hp4k8sJ5zuiXg9A98XgdzFe
         ywAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=J2Wl70x4UkLbyBjsFooA2cSFYzRp3G8CiWq3g/s8LQc=;
        b=MqfKy7ijVKhHBVRPXmQ+O2DQtzNN0dtEA6EFXx+SVYAsT0b2e+rDkMnG3aAQVFMXcQ
         izSiQQMKg0y+rT1gfONKRBRw6VN3kjurXGOL+xFpvcs1ltCcgI1CKmwVRsVFQBxd2IRr
         OSELY3j9dWPrj5j0hS7APULGwjwlN93BbWyQoPUW4dnPFS2jV1IScoYAhCxkGErzaLLV
         jCIru74S+8yKMMJZPa+a+HmY6tFBBW5opp4/L9eBA/PFWJXDLN7jtMC7yjIn5VUSh8Bs
         dTcJHmM5wWuRjOzNKKnqAdFhjl7JhsODSBWbvGata7XgfunrnLfMvFx4Xnbdlxpby9Hp
         Dyeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TLF9ThUw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id s9si74685ybk.3.2020.09.10.22.50.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 22:50:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id e7so6936394qtj.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 22:50:53 -0700 (PDT)
X-Received: by 2002:ac8:501:: with SMTP id u1mr460288qtg.261.1599803452788;
        Thu, 10 Sep 2020 22:50:52 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id t11sm1223542qtp.32.2020.09.10.22.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 22:50:52 -0700 (PDT)
Date: Thu, 10 Sep 2020 22:50:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kernel test robot <lkp@intel.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [linuxppc:next-test 146/147]
 arch/powerpc/kernel/process.c:1957:7: warning: variable 'val' is used
 uninitialized whenever 'if' condition is true
Message-ID: <20200911055050.GA1396055@ubuntu-n2-xlarge-x86>
References: <202009110950.rYP0olyT%lkp@intel.com>
 <07fc9016-5fe3-fea4-6bba-b42769283ef9@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <07fc9016-5fe3-fea4-6bba-b42769283ef9@csgroup.eu>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TLF9ThUw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Sep 11, 2020 at 07:23:21AM +0200, Christophe Leroy wrote:
>=20
>=20
> Le 11/09/2020 =C3=A0 03:10, kernel test robot a =C3=A9crit=C2=A0:
> > tree:   https://github.com/linuxppc/linux next-test
> > head:   b86acbffee8165a25d69876c37b0a1bab8e4f66d
> > commit: 887af0b0a569ff6f5af0ec24fcb1c6cde264a18a [146/147] powerpc/proc=
ess: Remove useless #ifdef CONFIG_SPE
> > config: powerpc-randconfig-r005-20200911 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a=
5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> > reproduce (this is a W=3D1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install powerpc cross compiling tool for clang build
> >          # apt-get install binutils-powerpc-linux-gnu
> >          git checkout 887af0b0a569ff6f5af0ec24fcb1c6cde264a18a
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Dpowerpc
> >=20
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >=20
> > All warnings (new ones prefixed by >>):
> >=20
> > > > arch/powerpc/kernel/process.c:1957:7: warning: variable 'val' is us=
ed uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized=
]
> >                     if (cpu_has_feature(CPU_FTR_SPE)) {
>=20
> This can NEVER be true when CONFIG_SPE is not selected. Apparently clang
> doesn't see it while gcc does.
>=20
> If we want to fix it, I suppose we can initialise var to 0 as suggested
> below by clang, but for me that's clang that should be fixed.
>=20
> Michael, you can do the change if you want to make clang happy.
>=20
> Christophe

gcc doesn't either, -Wmaybe-uninitialized is just not enabled by default
anymore after commit 78a5255ffb6a ("Stop the ad-hoc games with
-Wno-maybe-initialized"). I can reproduce it on GCC 10.2.0 with this
config when -Wmaybe-uninitialized is passed.

$ make -skj"$(nproc)" ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc-linux- KCFLAGS=
=3D-Wmaybe-uninitialized olddefconfig arch/powerpc/kernel/process.o
In file included from ./include/linux/uaccess.h:10,
                 from ./include/linux/sched/task.h:11,
                 from arch/powerpc/kernel/process.c:16:
arch/powerpc/kernel/process.c: In function 'get_fpexc_mode':
./arch/powerpc/include/asm/uaccess.h:181:2: warning: 'val' may be used unin=
itialized in this function [-Wmaybe-uninitialized]
  181 |  asm volatile goto(     \
      |  ^~~
arch/powerpc/kernel/process.c:1959:15: note: 'val' was declared here
 1959 |  unsigned int val;
      |               ^~~

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200911055050.GA1396055%40ubuntu-n2-xlarge-x86.
