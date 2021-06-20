Return-Path: <clang-built-linux+bncBDN7FYMXXEORBWFMX6DAMGQEZ3H6H6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3A03AE128
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 01:59:22 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id z10-20020a170903018ab02901108a797206sf3053237plg.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 16:59:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624233560; cv=pass;
        d=google.com; s=arc-20160816;
        b=arcg+zr3d+Z+5VbH3HRy444p3Cg6E8tQ+h76o6QnbpSh8Np9amBdLi+9mhhdsY7XE0
         b5s1mz56VZCTwxzGcv3NZB6188Gr4kZ19PRdxJtP+ZpQabuGSuBxMEWGVetHw/j2MCHR
         qFUzgpg2OKmVpprc92UdkdWSbVH7Ohf0/xvljABLGxnTkSImG0MEWDgBgvg3b4k8Tqey
         y2WUXJsVqVGbOVWOokbnNfMOn5p/ieyJKLudysDOu/4/G5C3kF3zhc7TJt2+50nYHgAB
         ck57IBvjAxLgAi7IT7S4xoPWAAyWDTSf6j04y/iJO1adp5xOxKaP2gu6zsKm/oDojlfb
         u92w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:in-reply-to
         :references:cc:to:subject:from:date:sender:dkim-signature
         :dkim-signature;
        bh=OzHQRJYoq4BOTrcZDy9r98CrMgrqI/xsXJ6dJ3y5/PI=;
        b=XOCJpLiwst331eofgzZPpMwiSSzIxb1vFjyD/OUbv/o21uFCW/GSKf7qxZo+I5U58U
         deCGy2tOLv/e3TNRj+yPaO4C31ybFSYhX5Yt5kNFFsklqJw/oEElAEJ2Ltsq5C+CRSXm
         cL2ZKOLlKZZm4LOhObmHBovBFMrHOfTrzEP0X5lV3lxpR6rVEIvc7McxWNLhqNTFceCE
         fdSz5NOhK2oOxNnktvuY/m38VOpBRme3lpnQEjJmFNb7ENCd8Cn1ieus9q7j9V694kNd
         BIELUjbnTSMuzRjCctpTWtxdOy+j7DmmmsCbVaVW3YTA//CE0DZRDVeg9j8PbU0JdJlV
         jamg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ttLoaFZ3;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzHQRJYoq4BOTrcZDy9r98CrMgrqI/xsXJ6dJ3y5/PI=;
        b=a0VoY4EVUhggCtsLCben7+9BXTKGcKlGd+6pglNfKMDM+iiXEaNJFSSv+xQ23A1Qzy
         MYear6DOF7HEkXziAXglg2viXzSGmum2dqUtzGaSQldh+/RedEzCR+P1oloH3Me8unmP
         0qx1bYAiip1Rc6K9tXmBNuCvQZf+SRnO88i3NhkpgNXN6+3aQAZZJ64Hax2rUuMnyxkA
         1DoPjnzPV539fD2BsB2dksFcMaOf+aS7cAVV/IvAU2hMNfq8BUjsdw3PnQ29NrcHoWcZ
         nELlvoucoiJTotFwczXYlPLQfxY7OU7quMw3MW1PAufv+3rFuGKbtRMmL7vuaHR+lUNu
         vbLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzHQRJYoq4BOTrcZDy9r98CrMgrqI/xsXJ6dJ3y5/PI=;
        b=fgJatVIfk6ZuidGiIf+1zCfe5AsCtirbhKfZYUmb3exynnXOwzZj5FA3Q+UeI4gLBG
         fdNqBKXAwrSLfPITEdJDBIKJkupiauXF+pZiEyPOzhzSeozQin0HWkIfnJp/qoCzJDyt
         eKbz+1hHv8LwDP/+HjlSmpmo4vTmzDyB1EW2nDkhvGDkk3fHTQVku+qw9CRsigXnZWMq
         vMCXzew1TZ0QEIsWUVMZRI1kbca2HrlYuOePm4XAWAW9Xb/zzTpGXLFaS5hmgRQMVK1n
         0XpHgHr1FFTrZQyTWRmxd8XTgdDVVnmTwFbLsmcUJ6WR4Uq6+nXnFONP/k0zNcpP6qFP
         BVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzHQRJYoq4BOTrcZDy9r98CrMgrqI/xsXJ6dJ3y5/PI=;
        b=T8KOBqxKYX10tom6QXr+JEuGU4wQTW1r1i2gQ43i2TG1qNRAm5hxRNNbO61DV/3x0f
         eWSYneF1iqy4N93+RcAZfi+UpGCUkmDD4tgMBctCrRu4hpSltxlrRRHe4KTYA8FPIXLE
         CVypmQEUd99HxOUatfCw8FvLZptDU99J8HaEGz3J+Zxdni/2L3w7mcr3HDKSMT+muzMg
         +F6D0/c3/fuGEEHCqXlzPczTaBXUpyMzkeCzgUgoaA7Kkb1L1ROnsuUdce3x2MpvLd5N
         5OHKnQLNexIFa9yINUypNA9PYN+rCdqouT/dj4jVx4qQPEnY4JwsLN9/8Npu08+kk5nH
         ic4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+eQzJGTtrdD6eqZUxkko4MS3rdEiuW5PsIKmZv3NKw9mnKCvM
	0kMDpxgpeANaYWonawwtppg=
X-Google-Smtp-Source: ABdhPJzAriH9tUdi85Wl7oCKuy1fma+Sba3IRFfSk4dP5va6dwM0lQBxECLVtLHiZCg12EfqEuykdQ==
X-Received: by 2002:a63:1848:: with SMTP id 8mr21349031pgy.392.1624233560466;
        Sun, 20 Jun 2021 16:59:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ea4f:: with SMTP id l15ls1777062pgk.11.gmail; Sun, 20
 Jun 2021 16:59:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:a1e:b029:2e2:89d8:5c87 with SMTP id p30-20020a056a000a1eb02902e289d85c87mr17012564pfh.73.1624233559952;
        Sun, 20 Jun 2021 16:59:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624233559; cv=none;
        d=google.com; s=arc-20160816;
        b=WKUlXz1S18rPQka+TtXY8f8uYAXGkC+Gx+H/PCgNhm41GiHYCK8F3jjO+O2L2wfSjY
         FOstoxXNIep4f7dJ63edhtX7ziggIT9hzmcQskCk3ihvv99T7Z/kuVAlxv9KUb3X74ZH
         cEDWTMJcEGu9lOILSvpfuDIsxd+RaxnTWRZ9Wv+jCD+0jMkd1TBp8ufEHZxcdvGGeWna
         GRD4cyQcVQnWgUmKUunCyjtPV6PANrmKN8+SoYf9O9x/GBQbG00FH4gjnc9GFdIqb43H
         rN9qWCY4AE9mSWR6qHeh7si+Ryt1WeqyQM2KJXhQ8PixiHwpzLtFJ5JlogHYXKaL9wJu
         7wSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:in-reply-to
         :references:cc:to:subject:from:date:dkim-signature;
        bh=7U6CzGv2e/d/9047/ln4AbfjZylQ7TJyWzhvRZicX1k=;
        b=NsL68b5rmHGbhU9xOq+VJf7/eYuWytlyDR2uYKIBWNAqtNCCsWkgGrfyVhFP09g53i
         kPOPVkvL5tgNaXxcTKDJcfd2geQeXTgMCFLBzN7/pPa3RHYU+T0H4Uv/tr2DOrUX9Kr9
         x88Itunv0YVNE5BIEBrexRcz+xhYVvBa5yhjUls50IG1GoAMJsQfQYFkuZqN1qjU1bLb
         COQQrin/R/8dqaxDJ4JZYQAFgnKHe2xnuTtMNM1ocuIp3wJnvb5abrR8I0wBREtvl91N
         9z9GCp1upfVV/EiVmCKhLnDX09NT5pEcqpZ/T+OBJwJVQlV2ol+bX43byfw7IGYOPXVW
         ycSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ttLoaFZ3;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id d123si1292772pfa.2.2021.06.20.16.59.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 16:59:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id w71so2266663pfd.4
        for <clang-built-linux@googlegroups.com>; Sun, 20 Jun 2021 16:59:19 -0700 (PDT)
X-Received: by 2002:aa7:949c:0:b029:2fa:c881:dd0 with SMTP id z28-20020aa7949c0000b02902fac8810dd0mr16755067pfk.9.1624233559655;
        Sun, 20 Jun 2021 16:59:19 -0700 (PDT)
Received: from localhost (60-242-147-73.tpgi.com.au. [60.242.147.73])
        by smtp.gmail.com with ESMTPSA id l6sm545873pgh.34.2021.06.20.16.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jun 2021 16:59:19 -0700 (PDT)
Date: Mon, 21 Jun 2021 09:59:14 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame
 size of 2304 bytes in function 'kvmhv_enter_nested_guest'
To: Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, Kees Cook
	<keescook@chromium.org>, linux-kernel@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>, Nathan Chancellor
	<nathan@kernel.org>, linuxppc-dev@lists.ozlabs.org, kvm-ppc@vger.kernel.org
References: <202104031853.vDT0Qjqj-lkp@intel.com>
In-Reply-To: <202104031853.vDT0Qjqj-lkp@intel.com>
MIME-Version: 1.0
Message-Id: <1624232938.d90brlmh3p.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ttLoaFZ3;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::431 as
 permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Excerpts from kernel test robot's message of April 3, 2021 8:47 pm:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   d93a0d43e3d0ba9e19387be4dae4a8d5b175a8d7
> commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
> date:   3 weeks ago
> config: powerpc64-randconfig-r006-20210403 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0fe8af94688aa03c01913c2001d6a1a911f42ce6)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=97e4910232fa1f81e806aa60c25a0450276d99a2
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame size of 2304 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
>    long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>         ^
>    1 error generated.
> 
> 
> vim +/kvmhv_enter_nested_guest +264 arch/powerpc/kvm/book3s_hv_nested.c

Not much changed here recently. It's not that big a concern because it's 
only called in the KVM ioctl path, not in any deep IO paths or anything,
and doesn't recurse. Might be a bit of inlining or stack spilling put it
over the edge.

powerpc does make it an error though, would be good to avoid that so the
robot doesn't keep tripping over.

Thanks,
Nick


> 
> afe75049303f75 Ravi Bangoria        2020-12-16  263  
> 360cae313702cd Paul Mackerras       2018-10-08 @264  long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
> 360cae313702cd Paul Mackerras       2018-10-08  265  {
> 360cae313702cd Paul Mackerras       2018-10-08  266  	long int err, r;
> 360cae313702cd Paul Mackerras       2018-10-08  267  	struct kvm_nested_guest *l2;
> 360cae313702cd Paul Mackerras       2018-10-08  268  	struct pt_regs l2_regs, saved_l1_regs;
> afe75049303f75 Ravi Bangoria        2020-12-16  269  	struct hv_guest_state l2_hv = {0}, saved_l1_hv;
> 360cae313702cd Paul Mackerras       2018-10-08  270  	struct kvmppc_vcore *vc = vcpu->arch.vcore;
> 360cae313702cd Paul Mackerras       2018-10-08  271  	u64 hv_ptr, regs_ptr;
> 360cae313702cd Paul Mackerras       2018-10-08  272  	u64 hdec_exp;
> 360cae313702cd Paul Mackerras       2018-10-08  273  	s64 delta_purr, delta_spurr, delta_ic, delta_vtb;
> 360cae313702cd Paul Mackerras       2018-10-08  274  	u64 mask;
> 360cae313702cd Paul Mackerras       2018-10-08  275  	unsigned long lpcr;
> 360cae313702cd Paul Mackerras       2018-10-08  276  
> 360cae313702cd Paul Mackerras       2018-10-08  277  	if (vcpu->kvm->arch.l1_ptcr == 0)
> 360cae313702cd Paul Mackerras       2018-10-08  278  		return H_NOT_AVAILABLE;
> 360cae313702cd Paul Mackerras       2018-10-08  279  
> 360cae313702cd Paul Mackerras       2018-10-08  280  	/* copy parameters in */
> 360cae313702cd Paul Mackerras       2018-10-08  281  	hv_ptr = kvmppc_get_gpr(vcpu, 4);
> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  282  	regs_ptr = kvmppc_get_gpr(vcpu, 5);
> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  283  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
> afe75049303f75 Ravi Bangoria        2020-12-16  284  	err = kvmhv_read_guest_state_and_regs(vcpu, &l2_hv, &l2_regs,
> afe75049303f75 Ravi Bangoria        2020-12-16  285  					      hv_ptr, regs_ptr);
> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  286  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
> 360cae313702cd Paul Mackerras       2018-10-08  287  	if (err)
> 360cae313702cd Paul Mackerras       2018-10-08  288  		return H_PARAMETER;
> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  289  
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  290  	if (kvmppc_need_byteswap(vcpu))
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  291  		byteswap_hv_regs(&l2_hv);
> afe75049303f75 Ravi Bangoria        2020-12-16  292  	if (l2_hv.version > HV_GUEST_STATE_VERSION)
> 360cae313702cd Paul Mackerras       2018-10-08  293  		return H_P2;
> 360cae313702cd Paul Mackerras       2018-10-08  294  
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  295  	if (kvmppc_need_byteswap(vcpu))
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  296  		byteswap_pt_regs(&l2_regs);
> 9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  297  	if (l2_hv.vcpu_token >= NR_CPUS)
> 9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  298  		return H_PARAMETER;
> 9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  299  
> 360cae313702cd Paul Mackerras       2018-10-08  300  	/* translate lpid */
> 360cae313702cd Paul Mackerras       2018-10-08  301  	l2 = kvmhv_get_nested(vcpu->kvm, l2_hv.lpid, true);
> 360cae313702cd Paul Mackerras       2018-10-08  302  	if (!l2)
> 360cae313702cd Paul Mackerras       2018-10-08  303  		return H_PARAMETER;
> 360cae313702cd Paul Mackerras       2018-10-08  304  	if (!l2->l1_gr_to_hr) {
> 360cae313702cd Paul Mackerras       2018-10-08  305  		mutex_lock(&l2->tlb_lock);
> 360cae313702cd Paul Mackerras       2018-10-08  306  		kvmhv_update_ptbl_cache(l2);
> 360cae313702cd Paul Mackerras       2018-10-08  307  		mutex_unlock(&l2->tlb_lock);
> 360cae313702cd Paul Mackerras       2018-10-08  308  	}
> 360cae313702cd Paul Mackerras       2018-10-08  309  
> 360cae313702cd Paul Mackerras       2018-10-08  310  	/* save l1 values of things */
> 360cae313702cd Paul Mackerras       2018-10-08  311  	vcpu->arch.regs.msr = vcpu->arch.shregs.msr;
> 360cae313702cd Paul Mackerras       2018-10-08  312  	saved_l1_regs = vcpu->arch.regs;
> 360cae313702cd Paul Mackerras       2018-10-08  313  	kvmhv_save_hv_regs(vcpu, &saved_l1_hv);
> 360cae313702cd Paul Mackerras       2018-10-08  314  
> 360cae313702cd Paul Mackerras       2018-10-08  315  	/* convert TB values/offsets to host (L0) values */
> 360cae313702cd Paul Mackerras       2018-10-08  316  	hdec_exp = l2_hv.hdec_expiry - vc->tb_offset;
> 360cae313702cd Paul Mackerras       2018-10-08  317  	vc->tb_offset += l2_hv.tb_offset;
> 360cae313702cd Paul Mackerras       2018-10-08  318  
> 360cae313702cd Paul Mackerras       2018-10-08  319  	/* set L1 state to L2 state */
> 360cae313702cd Paul Mackerras       2018-10-08  320  	vcpu->arch.nested = l2;
> 360cae313702cd Paul Mackerras       2018-10-08  321  	vcpu->arch.nested_vcpu_id = l2_hv.vcpu_token;
> 360cae313702cd Paul Mackerras       2018-10-08  322  	vcpu->arch.regs = l2_regs;
> 360cae313702cd Paul Mackerras       2018-10-08  323  	vcpu->arch.shregs.msr = vcpu->arch.regs.msr;
> 360cae313702cd Paul Mackerras       2018-10-08  324  	mask = LPCR_DPFD | LPCR_ILE | LPCR_TC | LPCR_AIL | LPCR_LD |
> 360cae313702cd Paul Mackerras       2018-10-08  325  		LPCR_LPES | LPCR_MER;
> 360cae313702cd Paul Mackerras       2018-10-08  326  	lpcr = (vc->lpcr & ~mask) | (l2_hv.lpcr & mask);
> 73937deb4b2d7f Suraj Jitindar Singh 2018-10-08  327  	sanitise_hv_regs(vcpu, &l2_hv);
> 360cae313702cd Paul Mackerras       2018-10-08  328  	restore_hv_regs(vcpu, &l2_hv);
> 360cae313702cd Paul Mackerras       2018-10-08  329  
> 360cae313702cd Paul Mackerras       2018-10-08  330  	vcpu->arch.ret = RESUME_GUEST;
> 360cae313702cd Paul Mackerras       2018-10-08  331  	vcpu->arch.trap = 0;
> 360cae313702cd Paul Mackerras       2018-10-08  332  	do {
> 360cae313702cd Paul Mackerras       2018-10-08  333  		if (mftb() >= hdec_exp) {
> 360cae313702cd Paul Mackerras       2018-10-08  334  			vcpu->arch.trap = BOOK3S_INTERRUPT_HV_DECREMENTER;
> 360cae313702cd Paul Mackerras       2018-10-08  335  			r = RESUME_HOST;
> 360cae313702cd Paul Mackerras       2018-10-08  336  			break;
> 360cae313702cd Paul Mackerras       2018-10-08  337  		}
> 8c99d34578628b Tianjia Zhang        2020-04-27  338  		r = kvmhv_run_single_vcpu(vcpu, hdec_exp, lpcr);
> 360cae313702cd Paul Mackerras       2018-10-08  339  	} while (is_kvmppc_resume_guest(r));
> 360cae313702cd Paul Mackerras       2018-10-08  340  
> 360cae313702cd Paul Mackerras       2018-10-08  341  	/* save L2 state for return */
> 360cae313702cd Paul Mackerras       2018-10-08  342  	l2_regs = vcpu->arch.regs;
> 360cae313702cd Paul Mackerras       2018-10-08  343  	l2_regs.msr = vcpu->arch.shregs.msr;
> 360cae313702cd Paul Mackerras       2018-10-08  344  	delta_purr = vcpu->arch.purr - l2_hv.purr;
> 360cae313702cd Paul Mackerras       2018-10-08  345  	delta_spurr = vcpu->arch.spurr - l2_hv.spurr;
> 360cae313702cd Paul Mackerras       2018-10-08  346  	delta_ic = vcpu->arch.ic - l2_hv.ic;
> 360cae313702cd Paul Mackerras       2018-10-08  347  	delta_vtb = vc->vtb - l2_hv.vtb;
> 360cae313702cd Paul Mackerras       2018-10-08  348  	save_hv_return_state(vcpu, vcpu->arch.trap, &l2_hv);
> 360cae313702cd Paul Mackerras       2018-10-08  349  
> 360cae313702cd Paul Mackerras       2018-10-08  350  	/* restore L1 state */
> 360cae313702cd Paul Mackerras       2018-10-08  351  	vcpu->arch.nested = NULL;
> 360cae313702cd Paul Mackerras       2018-10-08  352  	vcpu->arch.regs = saved_l1_regs;
> 360cae313702cd Paul Mackerras       2018-10-08  353  	vcpu->arch.shregs.msr = saved_l1_regs.msr & ~MSR_TS_MASK;
> 360cae313702cd Paul Mackerras       2018-10-08  354  	/* set L1 MSR TS field according to L2 transaction state */
> 360cae313702cd Paul Mackerras       2018-10-08  355  	if (l2_regs.msr & MSR_TS_MASK)
> 360cae313702cd Paul Mackerras       2018-10-08  356  		vcpu->arch.shregs.msr |= MSR_TS_S;
> 360cae313702cd Paul Mackerras       2018-10-08  357  	vc->tb_offset = saved_l1_hv.tb_offset;
> 360cae313702cd Paul Mackerras       2018-10-08  358  	restore_hv_regs(vcpu, &saved_l1_hv);
> 360cae313702cd Paul Mackerras       2018-10-08  359  	vcpu->arch.purr += delta_purr;
> 360cae313702cd Paul Mackerras       2018-10-08  360  	vcpu->arch.spurr += delta_spurr;
> 360cae313702cd Paul Mackerras       2018-10-08  361  	vcpu->arch.ic += delta_ic;
> 360cae313702cd Paul Mackerras       2018-10-08  362  	vc->vtb += delta_vtb;
> 360cae313702cd Paul Mackerras       2018-10-08  363  
> 360cae313702cd Paul Mackerras       2018-10-08  364  	kvmhv_put_nested(l2);
> 360cae313702cd Paul Mackerras       2018-10-08  365  
> 360cae313702cd Paul Mackerras       2018-10-08  366  	/* copy l2_hv_state and regs back to guest */
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  367  	if (kvmppc_need_byteswap(vcpu)) {
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  368  		byteswap_hv_regs(&l2_hv);
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  369  		byteswap_pt_regs(&l2_regs);
> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  370  	}
> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  371  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
> afe75049303f75 Ravi Bangoria        2020-12-16  372  	err = kvmhv_write_guest_state_and_regs(vcpu, &l2_hv, &l2_regs,
> afe75049303f75 Ravi Bangoria        2020-12-16  373  					       hv_ptr, regs_ptr);
> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  374  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
> 360cae313702cd Paul Mackerras       2018-10-08  375  	if (err)
> 360cae313702cd Paul Mackerras       2018-10-08  376  		return H_AUTHORITY;
> 360cae313702cd Paul Mackerras       2018-10-08  377  
> 360cae313702cd Paul Mackerras       2018-10-08  378  	if (r == -EINTR)
> 360cae313702cd Paul Mackerras       2018-10-08  379  		return H_INTERRUPT;
> 360cae313702cd Paul Mackerras       2018-10-08  380  
> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  381  	if (vcpu->mmio_needed) {
> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  382  		kvmhv_nested_mmio_needed(vcpu, regs_ptr);
> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  383  		return H_TOO_HARD;
> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  384  	}
> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  385  
> 360cae313702cd Paul Mackerras       2018-10-08  386  	return vcpu->arch.trap;
> 360cae313702cd Paul Mackerras       2018-10-08  387  }
> 360cae313702cd Paul Mackerras       2018-10-08  388  
> 
> :::::: The code at line 264 was first introduced by commit
> :::::: 360cae313702cdd0b90f82c261a8302fecef030a KVM: PPC: Book3S HV: Nested guest entry via hypercall
> 
> :::::: TO: Paul Mackerras <paulus@ozlabs.org>
> :::::: CC: Michael Ellerman <mpe@ellerman.id.au>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1624232938.d90brlmh3p.astroid%40bobo.none.
