Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB267633AKGQEKV5JHFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 489601F11B0
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 05:26:37 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id e28sf12167771pgm.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 20:26:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591586796; cv=pass;
        d=google.com; s=arc-20160816;
        b=R3ilfaJmyxLJ6radccOzqkXbYTC5Z/6s6qKU95C/18wPuSCaN0fQsXmaynBP1xcOGt
         7zDplztWzKYbi2BKSOR+bVf36byuzV0+VUUAjov+0MPYDF5VKZwMnpxR3qw/HvEIH2xS
         oO6u0H+0wjX8REowId7GM9I+oGpoT6JI1xRG4VtSXTavsBO4fvcLwdTPxrd0GhtQS7GX
         KmzHJnXm3dVMW/nBayNvtrV6ieh+S70ZMK+CgaHyAz82r/baq9lrr3kEfc9E3+MQB6mQ
         dqOEMT+XfXUSlI5OVshEiId7CunaQyDcMxk+4AXuSKORPr5CkjCN5TcO/Mh+VTD3nfBX
         VrYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=b8H9Z9IV1QM9xyMuQsGONeHIEwsXizaWNOSNDK1X4es=;
        b=ooSFh9gaxsPBgLQKY8+Ek/Qj2YwE8gzDPVwvN21VCMecew/WCAeK6ciojHwyvZnzHL
         DXmO4zIFteNFPWTVZ9nvfF9Xa7V7utMQDpoWB8pOxRGbShOjJ8kvTN0MLH+YNL2xRYyN
         Ijj2N0T3mEKANMUilh5H0ZukyQ7CFEaanGbGJmlaZeciXhHdiv4On5Wr7spT1Nv81T1B
         V5TSILaDSTdjYT092qvL7zwKXdByQOAo2XYxc+VbgLGLtD54RWGFwTaV8tpebaUF6qpA
         BghtGPAjA1D4dNfPQuWzYLFkwlZcs9MFktg6Yh5FeLBZ6YY6nEDu3WZDSFMnmigEft0n
         Wt5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlGwpXz8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b8H9Z9IV1QM9xyMuQsGONeHIEwsXizaWNOSNDK1X4es=;
        b=gafOmCGyaaaGsfGMXeRCaLedBHbOOzjs5PBk2uKNmVptSr/FDxqWV9cxuDWLCyqfdt
         EVbeEdSraiSzbkzQw5gx3SijhygDqWtnKj1OoplXfVRAsiTxJqxP96fWA6ph6O5GDDqv
         xuElZeYhY9eQ4ts1TN0kEjYRugJ9tUiU2/9j68L7CIaNwS9jNN2rZQ6+gXb+WfvSdnhn
         EwnXTyVaD66heyB+pjxAJ7cbgDESj9rBj2egVMEFJetxVYXdFXAuMhMNndARCe6JmobQ
         j+rBATFk0rItiKYc+JQn+x5gh7DkPOMgQUE9R8LmIryJvBP/2Jfzn0UdBwNvBNqn5IAX
         pR9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b8H9Z9IV1QM9xyMuQsGONeHIEwsXizaWNOSNDK1X4es=;
        b=AB5yvGa+3Dj+nieruMPI9P+7YuRCLn++LOlvP2t4ELDKxTN0v6KsVMhZKB61sQh1BW
         4aeVdy6p8jadPIHMQbeuYg79Txfh/9D1QT5tq1whun9Q/iXLU4Cuug6fFIiKwVZoAPEZ
         M4v6WlfSd/k473VjwQB+Q+TwJ0EHpGaLh3Q4zRsfkZW3WfdgJQ0YLaq+UE16frjG+Mvr
         HUhjX8IyRaa2doRtLTGatCPR9dVHGFrSyG7D3qt1bEnPTZ9S4SavERHfODvR5OQbsMwK
         H32SX5bRK0ktdonkdTgu2Im6xFsqXPtQPYx/RbL6PBcx01PqY1vUW30AtZ+RmknxcSpO
         Nv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b8H9Z9IV1QM9xyMuQsGONeHIEwsXizaWNOSNDK1X4es=;
        b=cWWMTzBmLKm/52oYZQGePcOfPy6onUZsOghDJzdXtFbXIM/5VfffuR4OAmeuKLwovl
         fQUpw/olzf4QMf5if24Mk61pnhOZ+a+SE2RqIOeLqxfkr5kdbsjb/Z02kVSzgi7bRnF4
         hMYs17P0ntUb44VPCAV5ayJPTIKbxKBk0O2xM7/cjBaD2Lb7TL8QkeVJ4+c33EtCYoib
         L2Qg0PTPUAnZdMJ7/JvI2KiZRD4yC1qVHxysfFLL5mjmR9kePsQHr84Yrssq9oFgi8s9
         nn2GWCTEgV/ChKjZAU5Koj4STegGDYVJna2k9teDLcXsCkROsNcn40KvwCOKD1MlR1B/
         Xolw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533x8oLR8wFE1bPkH+lWwxjszfZofarfY2Mbh88zpCH8ooCUJoeb
	AxMnImO5Ay1LEbCILS6YxS0=
X-Google-Smtp-Source: ABdhPJyqZAglFQ+1eeMuqhONedxnYfxHzAX26bsyF3bHPxpxMdCHzEzp60yg9D1qnUxdIdf9gPNBlw==
X-Received: by 2002:a17:90a:9d8b:: with SMTP id k11mr15431939pjp.10.1591586795790;
        Sun, 07 Jun 2020 20:26:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:94b5:: with SMTP id a21ls4837064pfl.5.gmail; Sun, 07 Jun
 2020 20:26:35 -0700 (PDT)
X-Received: by 2002:aa7:9a91:: with SMTP id w17mr20628532pfi.199.1591586795365;
        Sun, 07 Jun 2020 20:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591586795; cv=none;
        d=google.com; s=arc-20160816;
        b=fzo5HL9LoRtlzK/Z+7cfbVsJ5nkJIWOjBH6fGb8wCXU2afP9FpLyG3VsiFc0fqdvlc
         +OApSGoI0JjhFOlyvwWWisK1QHJtlUx7HZDYpT1aQ4BjD8OHbJbSBvm5h+iAHkQ7edA3
         eR5znmDKc1FM86cwk0kpE7UbT2SORwe8fmWN6pcDt72eVmezekEZiGTK9vUI1RsC6R7R
         bJnx+X/MT2eNp92Wa/YkzEJM0WK3sqfmTSxDMhnqhmBCtGP2m8FVAQ/hvb+f12C1TLP2
         YSV29KJaTn5QCrF19l9MWq/FZFT4/hz/DowlzLG7ZqcEsElGx5kg8fP1bxAW8QUpJZAH
         kkLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5PTaL+u+dScBzy4iRXxf7pcmQlfzifFKKyqQzeh6wHU=;
        b=ynTvNZIbYOQ4DAy2xPw4IiCJPL48UpkjUW5NkwqM+I8WchxrO+aGjEovrnhRBZsHBH
         xyicUuRIJCVJQgGXVW8EZIcU+imVkGrTJZo+9VRjTeTh9Lvu0HLtw/SW53wehyjSUdgt
         OkNTFIl2LXNKs1soN4gVlbpHuKM7fmqJKUYEpDjAKm8bT1wFF5N5pOkkFbbhotfk2UM4
         ZaqjwZv8gf/8UAzx/2HkMzcJtzzLC8DQbiKpLug1TugppLfm5H+VYEsVkQjDgezgfu5i
         uVB+9WkdUz7PfDu4+oWJkjB0MQYhg+/EHo/ZQDVG9Afc6WlnlsX6Cm9xAMWjSQWASgoP
         7bBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nlGwpXz8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q1si273284pgg.5.2020.06.07.20.26.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2020 20:26:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id k4so12463946oik.2
        for <clang-built-linux@googlegroups.com>; Sun, 07 Jun 2020 20:26:35 -0700 (PDT)
X-Received: by 2002:aca:530e:: with SMTP id h14mr8324377oib.172.1591586794569;
        Sun, 07 Jun 2020 20:26:34 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id a137sm826919oob.27.2020.06.07.20.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2020 20:26:33 -0700 (PDT)
Date: Sun, 7 Jun 2020 20:26:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Cc: paulmck@kernel.org, kernel test robot <lkp@intel.com>,
	Ingo Molnar <mingo@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [rcu:dev.2020.06.02a 67/90] kernel/rcu/rcuperf.c:727:38:
 warning: format specifies type 'size_t' (aka 'unsigned int') but the
 argument has type 'unsigned long'
Message-ID: <20200608032632.GA2618368@ubuntu-n2-xlarge-x86>
References: <202006060704.dM7SxfSK%lkp@intel.com>
 <20200606001914.GE4455@paulmck-ThinkPad-P72>
 <20200607190057.GA19362@paulmck-ThinkPad-P72>
 <f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f@huawei.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nlGwpXz8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jun 08, 2020 at 09:56:16AM +0800, Kefeng Wang wrote:
>=20
> On 2020/6/8 3:00, Paul E. McKenney wrote:
> > On Fri, Jun 05, 2020 at 05:19:14PM -0700, Paul E. McKenney wrote:
> > > On Sat, Jun 06, 2020 at 07:07:10AM +0800, kernel test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/lin=
ux-rcu.git dev.2020.06.02a
> > > > head:   5216948905dd07a84cef8a7dc72c2ec076802efd
> > > > commit: 7d16add62717136b1839f0b3d7ea4cbb98f38c2a [67/90] rcuperf: F=
ix kfree_mult to match printk() format
> > > > config: arm-randconfig-r004-20200605 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-projec=
t 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> > > > reproduce (this is a W=3D1 build):
> > > >          wget https://raw.githubusercontent.com/intel/lkp-tests/mas=
ter/sbin/make.cross -O ~/bin/make.cross
> > > >          chmod +x ~/bin/make.cross
> > > >          # install arm cross compiling tool for clang build
> > > >          # apt-get install binutils-arm-linux-gnueabi
> > > >          git checkout 7d16add62717136b1839f0b3d7ea4cbb98f38c2a
> > > >          # save the attached .config to linux build tree
> > > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.c=
ross ARCH=3Darm
> > > >=20
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > Adding Kefeng on CC.  Kefeng, thoughts?
> > Like this, perhaps?
>=20
> Hi Paul=EF=BC=8CI check https://lkml.org/lkml/2020/6/2/286 and <https://g=
it.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/log/?h=3Ddev.2=
020.06.02a>
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/log=
/?h=3Ddev.2020.06.02a
>=20
> There are two different ways to fix the same issue
>=20
> patch 1:=C2=A0 rcuperf: Fix printk format warning urgent-for-mingo
>=20
> patch 2:=C2=A0 'rcuperf: Fix kfree_mult to match printk() format' from In=
go=C2=A0
> after my patch
>=20
> since patch1 already merged,=C2=A0 patch2 is not needed, so skip patch2?
>=20
> Thanks.
>=20
>=20
>=20
>=20
> >=20
> > 							Thanx, Paul
> >=20
> > diff --git a/kernel/rcu/rcuperf.c b/kernel/rcu/rcuperf.c
> > index 962869d..dc7483a 100644
> > --- a/kernel/rcu/rcuperf.c
> > +++ b/kernel/rcu/rcuperf.c
> > @@ -724,7 +724,7 @@ kfree_perf_init(void)
> >   		schedule_timeout_uninterruptible(1);
> >   	}
> > -	pr_alert("kfree object size=3D%zu\n", kfree_mult * sizeof(struct kfre=
e_obj));
> > +	pr_alert("kfree object size=3D%zu\n", (size_t)kfree_mult * sizeof(str=
uct kfree_obj));
> >   	kfree_reader_tasks =3D kcalloc(kfree_nrealthreads, sizeof(kfree_read=
er_tasks[0]),
> >   			       GFP_KERNEL);
> >=20
> > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > >=20
> > > > > > kernel/rcu/rcuperf.c:727:38: warning: format specifies type 'si=
ze_t' (aka 'unsigned int') but the argument has type 'unsigned long' [-Wfor=
mat]
> > > > pr_alert("kfree object size=3D%zun", kfree_mult * sizeof(struct kfr=
ee_obj));
> > > > ~~~     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > %lu
> > > > include/linux/printk.h:295:35: note: expanded from macro 'pr_alert'
> > > > printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
> > > > ~~~     ^~~~~~~~~~~
> > > > 1 warning generated.
> > > >=20
> > > > vim +727 kernel/rcu/rcuperf.c
> > > >=20
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  709)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  710) static int =
__init
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  711) kfree_perf_=
init(void)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  712) {
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  713) 	long i;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  714) 	int firste=
rr =3D 0;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  715)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  716) 	kfree_nrea=
lthreads =3D compute_real(kfree_nthreads);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  717) 	/* Start u=
p the kthreads. */
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  718) 	if (shutdo=
wn) {
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  719) 		init_wait=
queue_head(&shutdown_wq);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  720) 		firsterr =
=3D torture_create_kthread(kfree_perf_shutdown, NULL,
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  721) 						  shu=
tdown_task);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  722) 		if (first=
err)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  723) 			goto unw=
ind;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  724) 		schedule_=
timeout_uninterruptible(1);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  725) 	}
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  726)
> > > > b3e2d20973db3e Kefeng Wang             2020-04-17 @727  	pr_alert("=
kfree object size=3D%zu\n", kfree_mult * sizeof(struct kfree_obj));
> > > > f87dc808009ac8 Joel Fernandes (Google  2020-03-16  728)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  729) 	kfree_read=
er_tasks =3D kcalloc(kfree_nrealthreads, sizeof(kfree_reader_tasks[0]),
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  730) 			       G=
FP_KERNEL);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  731) 	if (kfree_=
reader_tasks =3D=3D NULL) {
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  732) 		firsterr =
=3D -ENOMEM;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  733) 		goto unwi=
nd;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  734) 	}
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  735)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  736) 	for (i =3D=
 0; i < kfree_nrealthreads; i++) {
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  737) 		firsterr =
=3D torture_create_kthread(kfree_perf_thread, (void *)i,
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  738) 						  kfr=
ee_reader_tasks[i]);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  739) 		if (first=
err)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  740) 			goto unw=
ind;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  741) 	}
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  742)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  743) 	while (ato=
mic_read(&n_kfree_perf_thread_started) < kfree_nrealthreads)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  744) 		schedule_=
timeout_uninterruptible(1);
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  745)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  746) 	torture_in=
it_end();
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  747) 	return 0;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  748)
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  749) unwind:
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  750) 	torture_in=
it_end();
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  751) 	kfree_perf=
_cleanup();
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  752) 	return fir=
sterr;
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  753) }
> > > > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  754)
> > > >=20
> > > > :::::: The code at line 727 was first introduced by commit
> > > > :::::: b3e2d20973db3ec87a6dd2fee0c88d3c2e7c2f61 rcuperf: Fix printk=
 format warning
> > > >=20
> > > > :::::: TO: Kefeng Wang <wangkefeng.wang@huawei.com>
> > > > :::::: CC: Paul E. McKenney <paulmck@kernel.org>
> > > >=20
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >=20
> > .
> >=20
>=20

Agreed, this is a problem with both patches being applied together,
both GCC and clang agree: https://godbolt.org/z/gGzPV7

Either patch works, it is just a matter of deciding which is better.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200608032632.GA2618368%40ubuntu-n2-xlarge-x86.
