Return-Path: <clang-built-linux+bncBCPZXIGQSEHBBZO3T2DAMGQEMK2AKUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 049E23A6EFC
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 21:28:38 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id u17-20020a05600c19d1b02901af4c4deac5sf396990wmq.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 12:28:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623698917; cv=pass;
        d=google.com; s=arc-20160816;
        b=tWc4zM/aafliuMX0mZUH8QbxQtl9CFS0O5tE6UfZG6iJEXMpshMV6QZcngct/snMD8
         ihijnPKmsPO0az/eK1ZiE2/E5d1dq1noYwXtxtVtm7lwTMUWBHjPitQD4Ibo7r7n2iNM
         LV6V1ISHbqnsyMq/noHu831XVX0Okl3C22b7bEZQ+PJvTKcW1lim7oV2bDbE6h7ajtM8
         MNGDrMLSDgPWn9xzga0iMIZRrblpyLGThE6mP99cP7Yklr6m3CAerbq5aVlpkwNxerwN
         aqh1jH8YFNQi04EAcDGLNhtehwHCbyXtixVfmD5xXEqMCKc3vg/fccYkD3oGGEePgPKw
         SbsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jIpf2FYOcnRFG51wPwi/OMPGbPLoQwoS/2QCFBXa69Q=;
        b=eFN0g8SXoVTp5/7kHfcF/I2b9+C6U7VVO8vPu4YF2rQQpNkVp+bIdL+OHTHiHiKomP
         kZM3tsZnTemsoysjrnw7bctm67C4AfbC8AVmZqTA7xPrc2BIU4ujjyG/B8EzEFiJAldz
         SlJsv89GYtzVXlLaQgS2v0WcvQbomFCAXCVuBouQ/1hlHWfIAjnSpXJLvfVKsuxlviBN
         43VnJp6myj3bnN9EZieosD49SVEBGlYnJuxrXJut+acQsghd/mmF0X7fybBBK+7baCpn
         paf287QxbOGgkxm/4qQWJQqrskvJgMeTzfVkm6ZYMrfypIs1e5q6PWkb9dDimdi1Tb03
         Sbkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tE+28eU5;
       spf=pass (google.com: domain of vincent.guittot@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=vincent.guittot@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIpf2FYOcnRFG51wPwi/OMPGbPLoQwoS/2QCFBXa69Q=;
        b=RPYrmJLmay7Z13i5YggTzOuLeFOB0mNbyt8pPCiELd51K/yU0jRtoev88Z0Ard7+sN
         x4FFkxfMP1GnI7CfcX8xawlN548RwcF6Q/qA8ahl4sXVOUehJvdVR05VMQrYnYKfq9cm
         ZnLVc+1cc9gNEDbz2c7WD1d3EsK4uTc025s9t9it8R8ALDdlL1EVWWx9isbaJvblnLEU
         8/bf1KdPUuA0XaEYRZl7SIB5ZXfmW9SgdI4eR8SSPkbRgjhf06H2Z+XhvoYBvsmWRfPm
         fiQz2qCpNg3MzzUMYmeypkmkuQF2MDGKymFuTlKsqvfO4GkAEN+WTcDU4+cX0mm3uf3F
         olCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jIpf2FYOcnRFG51wPwi/OMPGbPLoQwoS/2QCFBXa69Q=;
        b=m3CnJ/JOJD3UJGc6Rs10YqyUcNgmqAyhlQIcVAJQfI/PkZDoLRqHfRcRhD426bPY/3
         uq4pEyq9qJobFdEXOEhWDIJDGvOF6pyL8J/lbZgGHAqPh42lSrk0Ph6IAiOL6sSMyfK4
         e8QHqdE9fj5OqnEFL7/wAC1X0V9i2f3ICXFAPK1Sfn1AQ8OWcqJI5agiri4KLNjGUUc6
         H2M9NCoJ4agjMRXjr0ogczc7U6189HwExHBp31gvSk1XjgfQAbmZsltXRhOVgTYFG7d7
         lqfy0B/dpS7YxlcZXNFb7luGidVzUzfuR/D0k13IICwpgrLN8frzQe3IbEhMi5YnwYC8
         dLaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MFLBRIVv3bwZob5vIkMpICDw+Li9CkJvreUZeBluxRMVrCOGM
	aBTyMspyXDUijMyY/hE5ECY=
X-Google-Smtp-Source: ABdhPJxW9eF/8L0jFJcWRQEDvckjESwXJkXoQgmpzq4e1H54IEECbim/EE7uj6rKjqAe6MC0w6UMSA==
X-Received: by 2002:adf:e8cb:: with SMTP id k11mr20004523wrn.127.1623698917772;
        Mon, 14 Jun 2021 12:28:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls379430wrr.3.gmail; Mon, 14 Jun
 2021 12:28:37 -0700 (PDT)
X-Received: by 2002:adf:ee52:: with SMTP id w18mr20717456wro.37.1623698916919;
        Mon, 14 Jun 2021 12:28:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623698916; cv=none;
        d=google.com; s=arc-20160816;
        b=aHJLbg1nN9KyT22vzaShAcXzTXIcEIIjVJq4adOhLDjtG17MKSvoVJtCt9DZY2SNPZ
         IpX1+1PhqkIRvwcwB4mnqBXtASgNua9oBP8T9gHLiNkhKrZhBRhytxfwQCIwF3gz8e09
         CrRxwfE7s2Y7ipEx9BDi22/AuCC2HW4dbba5TI1bBhOYWEJiKReMD2Z3grIav2pNF+C+
         RXdJfnqeoDSSMmiJbPfm3PYK8eZSQzva+2UqaxV5blkqb8cJnFD/b9TjsSs89UoZFN8c
         troxYJRPN6ikFV75380TXhesi/hXV7KKq4zlcxEDEPRzd2ANYvtSkndE9MeHnlNcfNRf
         1x0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zLQiVrcno9hHFm8GdmIoGekPqU0jac+XU4XG32UNEFo=;
        b=yQ119AKvXsVygImeRHmhxizttgr62B7i7PQoBh4RMhcFKVE0xR20sgoBE+ebq+9p60
         4g15r5NFnl1kgG9U+5zZGEOA6+sJsXvucfRvNUpKfosHzQKqEiv+ouVbyVRr2k3qX+mR
         X64WNXUj8FBFrJmVSyaY1MZPMCplgSewbjCITbjDgnk8FlUG8rmzXgKgemXz+JaNiasi
         ujRqxkav6a9D8zJSw3C7M+5R/CASYnQh+fFh5jDMqkDupi9EDS9wDucGcMhvWEcxrgUv
         9ZPK63NBFecTXz1GbvEtNEMHD3fnNSIN0wHyqZ6SmxaTvPMaiYOjLk5MfwS7iPTUt/c0
         17oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tE+28eU5;
       spf=pass (google.com: domain of vincent.guittot@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=vincent.guittot@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id f23si19993wmh.2.2021.06.14.12.28.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 12:28:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincent.guittot@linaro.org designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id h11-20020a05600c350bb02901b59c28e8b4so149591wmq.1
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 12:28:36 -0700 (PDT)
X-Received: by 2002:a1c:9dc5:: with SMTP id g188mr694599wme.141.1623698916557;
        Mon, 14 Jun 2021 12:28:36 -0700 (PDT)
Received: from vingu-book ([2a01:e0a:f:6020:65e6:8f95:4f83:db44])
        by smtp.gmail.com with ESMTPSA id b26sm299049wmj.25.2021.06.14.12.28.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 12:28:35 -0700 (PDT)
Date: Mon, 14 Jun 2021 21:28:34 +0200
From: Vincent Guittot <vincent.guittot@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: Odin Ugedal <odin@uged.al>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [peterz-queue:sched/urgent 1/1] kernel/sched/fair.c:4771:8:
 error: implicit declaration of function 'cfs_rq_is_decayed'
Message-ID: <20210614192834.GA13213@vingu-book>
References: <202106150244.tJgEwdgV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202106150244.tJgEwdgV-lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: vincent.guittot@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tE+28eU5;       spf=pass
 (google.com: domain of vincent.guittot@linaro.org designates
 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=vincent.guittot@linaro.org;
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

Le mardi 15 juin 2021 =C3=A0 02:37:46 (+0800), kernel test robot a =C3=A9cr=
it :
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git =
sched/urgent
> head:   75f33978239fe8a05ffb95f301eccb166699ac49
> commit: 75f33978239fe8a05ffb95f301eccb166699ac49 [1/1] sched/fair: Correc=
tly insert cfs_rq's to list on unthrottle
> config: x86_64-randconfig-a015-20210613 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6472=
0f57bea6a6bf033feef4a5751ab9c0c3b401)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.gi=
t/commit/?id=3D75f33978239fe8a05ffb95f301eccb166699ac49
>         git remote add peterz-queue https://git.kernel.org/pub/scm/linux/=
kernel/git/peterz/queue.git
>         git fetch --no-tags peterz-queue sched/urgent
>         git checkout 75f33978239fe8a05ffb95f301eccb166699ac49
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>    kernel/sched/fair.c:637:5: warning: no previous prototype for function=
 'sched_update_scaling' [-Wmissing-prototypes]
>    int sched_update_scaling(void)
>        ^
>    kernel/sched/fair.c:637:1: note: declare 'static' if the function is n=
ot intended to be used outside of this translation unit
>    int sched_update_scaling(void)
>    ^
>    static=20
> >> kernel/sched/fair.c:4771:8: error: implicit declaration of function 'c=
fs_rq_is_decayed' [-Werror,-Wimplicit-function-declaration]
>                    if (!cfs_rq_is_decayed(cfs_rq) || cfs_rq->nr_running)
>                         ^
>    1 warning and 1 error generated.

It's the !SMP case for which PELT is disabled. The below fixes the problem:

---
 kernel/sched/fair.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 62a884a652cc..4f7df0e9d198 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -4062,6 +4062,11 @@ static inline void update_misfit_status(struct task_=
struct *p, struct rq *rq)

 #else /* CONFIG_SMP */

+static inline bool cfs_rq_is_decayed(struct cfs_rq *cfs_rq)
+{
+	return true;
+}
+
 #define UPDATE_TG	0x0
 #define SKIP_AGE_LOAD	0x0
 #define DO_ATTACH	0x0
--

Peter do you prefer a new version of the patch or you will add this fix dir=
ectly ?


>=20
>=20
> vim +/cfs_rq_is_decayed +4771 kernel/sched/fair.c
>=20
>   4759=09
>   4760	static int tg_unthrottle_up(struct task_group *tg, void *data)
>   4761	{
>   4762		struct rq *rq =3D data;
>   4763		struct cfs_rq *cfs_rq =3D tg->cfs_rq[cpu_of(rq)];
>   4764=09
>   4765		cfs_rq->throttle_count--;
>   4766		if (!cfs_rq->throttle_count) {
>   4767			cfs_rq->throttled_clock_task_time +=3D rq_clock_task(rq) -
>   4768						     cfs_rq->throttled_clock_task;
>   4769=09
>   4770			/* Add cfs_rq with load or one or more already running entities =
to the list */
> > 4771			if (!cfs_rq_is_decayed(cfs_rq) || cfs_rq->nr_running)
>   4772				list_add_leaf_cfs_rq(cfs_rq);
>   4773		}
>   4774=09
>   4775		return 0;
>   4776	}
>   4777=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210614192834.GA13213%40vingu-book.
