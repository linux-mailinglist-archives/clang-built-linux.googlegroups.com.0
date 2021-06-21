Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV6SYCDAMGQEPTEMZWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 253603AE2E1
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 07:53:29 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id n62-20020a4a53410000b0290246a4799849sf10622321oob.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 22:53:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624254807; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbpZrQZtAyJPpN89qbs0iILjoBPDPpVPQtweggjyz5uFalFfnGjS4Va3PyEx9SaCgH
         FJLfPQRVoKiz86Bo6xYZ8oOsleCvLaBUgnU/KXN6INDQfuIAvPzYj9IPAV7DgpRbH0Wc
         tEg6m1JACt8g9Q8tafiFHBvu1wwc1HRfAsyEcpA3zM+yaLO2TuNNv19qSzcbKPxTilcj
         zCJndm6ixxNGiBgD38ee+RZ70msDOuuNqC3uz6ea4Vh+HIzbNzNQ/LK8Gb24x5BRcfc4
         mYdQYHUFAYaQhPym31QRuTXaUnUSW/ik9vXvIKcHz9P/RxYRfcth65puvfhAAPByLvf0
         9IHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=pi4B/JfwkaXUQQASLSQKue1zNtfQy7yFYhvY08TKUIE=;
        b=payQVTrc0JrN5RkvrjlayeQVXTQYD1qslXxLrQmIfILj5P8kcG/zDi/XQ97VLpxTQ2
         AlQJBxaMCJxpSPYq/m1mNweahl6dVXmb3OtqQuUy3CzhCR+FyCqU+HGPH+oOBfXeOcIK
         BNy599dWVQuTv2A5fHuAgXq5mLVdKiTeRXpZ9CC0AKkBAXzcaq9pfwblta6v/KWeeWJM
         jXrlEkqYc16U/qWIM2ZTUugt7ntETC2tJ6djJiF4K8QCMoNJ9u8yi2bY91yMG8WYZrCb
         r2irbaQUl58G48SfqBzQH2GE+CmBj0TfIIoIxKhtySZXERahihrqI1brcjrwMyLkbC7Z
         WptQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P5Wn0abp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pi4B/JfwkaXUQQASLSQKue1zNtfQy7yFYhvY08TKUIE=;
        b=HzZWxkneg0QFN3pMPe78DR9HCBiB/AbG+dcOszCDBDoqUF57LefBytKCCP8w/ERKFc
         X6MGBkiWGZC7yBPx/PU4GmeC/rV5xkB+Wyq4K+U9+sKTqlKWwI/jEDa1kmgHDKyr2Gq4
         exKol7eT0ImvuFEKe+UMdKn88HQ0aY1Bbs3VEmOCRskMtIaMhvZv05vfqPNbrwo0hHi5
         +fkRb3EL8DcZmfxm7om+GB5hyLovG5Z2xhh2iXLZzF7J1rxy0JB0P0c7bkA+L3ijq1wv
         YLGmz8OyR5XEpld1/y3rBlYImnHs0UguYiML1AVIqMqvTqKgl21eO6DkdDzCpNbwGiTJ
         a43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pi4B/JfwkaXUQQASLSQKue1zNtfQy7yFYhvY08TKUIE=;
        b=kOyjlXwfV7kilj5D+2v6aGlqqAaq3qcnNd2e1TOZqDh4Iw9WGnKB4VgeCsKn0b7a97
         Yf9ep5JxEfavYNwo1XnBRoRBJ1RhV/GbSuNCXhF5fNgbEx0C2uMcz7LI0CMOjUMZrKbW
         nK999uRM/sz0VjK9Hi1Z4AL9ALlp7RdRBDwlOcR47RDYZA4ylM0Ktxvtr8kadqBa3P2E
         UGgxoyfzUDgU3sgHNjuhSmU2DDq0VNGLB6A3dIDXoSQM+UFa5oQQTMeOdxme6CnChvkd
         ysAe0b5mgn6sgGVPnuAswUC6qlhByWZvDFFGNKv96xEPPt68Ztyo9/jxfi+ijFeAULG/
         olNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532U1Fl5jMkUpcLJRPZyLGK74LMlQ4RdwDFa38/L55PB/1aZks43
	70tfrt1Y9fSR8bvjqjsNIqo=
X-Google-Smtp-Source: ABdhPJyd4xRVaxhxYHS1sg9/JczorWhnpf2ZlBBl034/pjcLlsByVQtAKo1awng6gOr4L6MgCsiMBA==
X-Received: by 2002:a9d:e8f:: with SMTP id 15mr19212826otj.334.1624254807734;
        Sun, 20 Jun 2021 22:53:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e0d0:: with SMTP id e16ls1626058oot.6.gmail; Sun, 20 Jun
 2021 22:53:27 -0700 (PDT)
X-Received: by 2002:a4a:3e8e:: with SMTP id t136mr19380064oot.83.1624254807362;
        Sun, 20 Jun 2021 22:53:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624254807; cv=none;
        d=google.com; s=arc-20160816;
        b=pRZwMMYjl+zX87e93Hj0DPiZ3gKauOVF357y3++Lk4nuUXLPvM2onHNABsDBoiIy40
         Fz/11N78VNh26CUshA/Q4/LbAO/aNGy3/q1FqfPWjMUuhrj8AdE4tQYRkMrrbeZF3SN8
         dhaA0x6fq2f5/fcEcbEUCdmDYXg3+KnmTTpRPAAAQHsrfXwODB2dAV6PhXLJgujExlM3
         0ZLeBDpb8b70XNYbB/2+nTvsF/ozoDK3KsktEGYst4inzvtLNoMN0yHoPMgKtzpYHJCQ
         PqoLtaJW3ILUva5+UCLAlrawLzpTXL7i5tQqEN+hrPJwClYe7d7dMX7Kc4q7haum7oRr
         lwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=SeBXWx6sxVQ7EcgbkBaFAoGEyld7R97LE6SiNB3D9HU=;
        b=snM8DBUyAlicy1H2GweNkwHxQra9MsO0LKugJVm8xitDecKkXEEBEELOre5oExS9jb
         sNMlYIVDVTGIn7gSHbkreh54OLj3+dt7ocBnU5za/Rbzx+9AL48ysRt8xU3wFA1867Wv
         9oMAnllOgx9dv7v+ptTOwPTUy9ZfSprPaOvdTUYSReUDREt5/x7XUVeZ0aF/IM4uU9XF
         mou7pafX8uI8OI6kcXc6lkzP9B1Uva2WF3XNzQWVlnDjwzwUHpqj5VNgJmyVq2O/e8V/
         v1+XwW/2hKmPwVbI28isxMw+pshnCu45ToB24oyuBUTqxlrYsyvLS+qYA+iYSkYmHtXh
         48rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P5Wn0abp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p16si1162763oou.2.2021.06.20.22.53.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Jun 2021 22:53:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B3B76113C;
	Mon, 21 Jun 2021 05:53:26 +0000 (UTC)
Subject: Re: arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame
 size of 2304 bytes in function 'kvmhv_enter_nested_guest'
To: Nicholas Piggin <npiggin@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 kernel test robot <lkp@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 linuxppc-dev@lists.ozlabs.org, kvm-ppc@vger.kernel.org
References: <202104031853.vDT0Qjqj-lkp@intel.com>
 <1624232938.d90brlmh3p.astroid@bobo.none>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <e6167885-30e5-d149-bcde-3e9ad9f5d381@kernel.org>
Date: Sun, 20 Jun 2021 22:53:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1624232938.d90brlmh3p.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P5Wn0abp;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 6/20/2021 4:59 PM, Nicholas Piggin wrote:
> Excerpts from kernel test robot's message of April 3, 2021 8:47 pm:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   d93a0d43e3d0ba9e19387be4dae4a8d5b175a8d7
>> commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
>> date:   3 weeks ago
>> config: powerpc64-randconfig-r006-20210403 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0fe8af94688aa03c01913c2001d6a1a911f42ce6)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=97e4910232fa1f81e806aa60c25a0450276d99a2
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame size of 2304 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
>>     long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>>          ^
>>     1 error generated.
>>
>>
>> vim +/kvmhv_enter_nested_guest +264 arch/powerpc/kvm/book3s_hv_nested.c
> 
> Not much changed here recently. It's not that big a concern because it's
> only called in the KVM ioctl path, not in any deep IO paths or anything,
> and doesn't recurse. Might be a bit of inlining or stack spilling put it
> over the edge.

It appears to be the fact that LLVM's PowerPC backend does not emit 
efficient byteswap assembly:

https://github.com/ClangBuiltLinux/linux/issues/1292

https://bugs.llvm.org/show_bug.cgi?id=49610

> powerpc does make it an error though, would be good to avoid that so the
> robot doesn't keep tripping over.

Marking byteswap_pt_regs as 'noinline_for_stack' drastically reduces the 
stack usage. If that is an acceptable solution, I can send it along 
tomorrow.

Cheers,
Nathan

> Thanks,
> Nick
> 
> 
>>
>> afe75049303f75 Ravi Bangoria        2020-12-16  263
>> 360cae313702cd Paul Mackerras       2018-10-08 @264  long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>> 360cae313702cd Paul Mackerras       2018-10-08  265  {
>> 360cae313702cd Paul Mackerras       2018-10-08  266  	long int err, r;
>> 360cae313702cd Paul Mackerras       2018-10-08  267  	struct kvm_nested_guest *l2;
>> 360cae313702cd Paul Mackerras       2018-10-08  268  	struct pt_regs l2_regs, saved_l1_regs;
>> afe75049303f75 Ravi Bangoria        2020-12-16  269  	struct hv_guest_state l2_hv = {0}, saved_l1_hv;
>> 360cae313702cd Paul Mackerras       2018-10-08  270  	struct kvmppc_vcore *vc = vcpu->arch.vcore;
>> 360cae313702cd Paul Mackerras       2018-10-08  271  	u64 hv_ptr, regs_ptr;
>> 360cae313702cd Paul Mackerras       2018-10-08  272  	u64 hdec_exp;
>> 360cae313702cd Paul Mackerras       2018-10-08  273  	s64 delta_purr, delta_spurr, delta_ic, delta_vtb;
>> 360cae313702cd Paul Mackerras       2018-10-08  274  	u64 mask;
>> 360cae313702cd Paul Mackerras       2018-10-08  275  	unsigned long lpcr;
>> 360cae313702cd Paul Mackerras       2018-10-08  276
>> 360cae313702cd Paul Mackerras       2018-10-08  277  	if (vcpu->kvm->arch.l1_ptcr == 0)
>> 360cae313702cd Paul Mackerras       2018-10-08  278  		return H_NOT_AVAILABLE;
>> 360cae313702cd Paul Mackerras       2018-10-08  279
>> 360cae313702cd Paul Mackerras       2018-10-08  280  	/* copy parameters in */
>> 360cae313702cd Paul Mackerras       2018-10-08  281  	hv_ptr = kvmppc_get_gpr(vcpu, 4);
>> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  282  	regs_ptr = kvmppc_get_gpr(vcpu, 5);
>> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  283  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
>> afe75049303f75 Ravi Bangoria        2020-12-16  284  	err = kvmhv_read_guest_state_and_regs(vcpu, &l2_hv, &l2_regs,
>> afe75049303f75 Ravi Bangoria        2020-12-16  285  					      hv_ptr, regs_ptr);
>> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  286  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
>> 360cae313702cd Paul Mackerras       2018-10-08  287  	if (err)
>> 360cae313702cd Paul Mackerras       2018-10-08  288  		return H_PARAMETER;
>> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  289
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  290  	if (kvmppc_need_byteswap(vcpu))
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  291  		byteswap_hv_regs(&l2_hv);
>> afe75049303f75 Ravi Bangoria        2020-12-16  292  	if (l2_hv.version > HV_GUEST_STATE_VERSION)
>> 360cae313702cd Paul Mackerras       2018-10-08  293  		return H_P2;
>> 360cae313702cd Paul Mackerras       2018-10-08  294
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  295  	if (kvmppc_need_byteswap(vcpu))
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  296  		byteswap_pt_regs(&l2_regs);
>> 9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  297  	if (l2_hv.vcpu_token >= NR_CPUS)
>> 9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  298  		return H_PARAMETER;
>> 9d0b048da788c1 Suraj Jitindar Singh 2018-10-08  299
>> 360cae313702cd Paul Mackerras       2018-10-08  300  	/* translate lpid */
>> 360cae313702cd Paul Mackerras       2018-10-08  301  	l2 = kvmhv_get_nested(vcpu->kvm, l2_hv.lpid, true);
>> 360cae313702cd Paul Mackerras       2018-10-08  302  	if (!l2)
>> 360cae313702cd Paul Mackerras       2018-10-08  303  		return H_PARAMETER;
>> 360cae313702cd Paul Mackerras       2018-10-08  304  	if (!l2->l1_gr_to_hr) {
>> 360cae313702cd Paul Mackerras       2018-10-08  305  		mutex_lock(&l2->tlb_lock);
>> 360cae313702cd Paul Mackerras       2018-10-08  306  		kvmhv_update_ptbl_cache(l2);
>> 360cae313702cd Paul Mackerras       2018-10-08  307  		mutex_unlock(&l2->tlb_lock);
>> 360cae313702cd Paul Mackerras       2018-10-08  308  	}
>> 360cae313702cd Paul Mackerras       2018-10-08  309
>> 360cae313702cd Paul Mackerras       2018-10-08  310  	/* save l1 values of things */
>> 360cae313702cd Paul Mackerras       2018-10-08  311  	vcpu->arch.regs.msr = vcpu->arch.shregs.msr;
>> 360cae313702cd Paul Mackerras       2018-10-08  312  	saved_l1_regs = vcpu->arch.regs;
>> 360cae313702cd Paul Mackerras       2018-10-08  313  	kvmhv_save_hv_regs(vcpu, &saved_l1_hv);
>> 360cae313702cd Paul Mackerras       2018-10-08  314
>> 360cae313702cd Paul Mackerras       2018-10-08  315  	/* convert TB values/offsets to host (L0) values */
>> 360cae313702cd Paul Mackerras       2018-10-08  316  	hdec_exp = l2_hv.hdec_expiry - vc->tb_offset;
>> 360cae313702cd Paul Mackerras       2018-10-08  317  	vc->tb_offset += l2_hv.tb_offset;
>> 360cae313702cd Paul Mackerras       2018-10-08  318
>> 360cae313702cd Paul Mackerras       2018-10-08  319  	/* set L1 state to L2 state */
>> 360cae313702cd Paul Mackerras       2018-10-08  320  	vcpu->arch.nested = l2;
>> 360cae313702cd Paul Mackerras       2018-10-08  321  	vcpu->arch.nested_vcpu_id = l2_hv.vcpu_token;
>> 360cae313702cd Paul Mackerras       2018-10-08  322  	vcpu->arch.regs = l2_regs;
>> 360cae313702cd Paul Mackerras       2018-10-08  323  	vcpu->arch.shregs.msr = vcpu->arch.regs.msr;
>> 360cae313702cd Paul Mackerras       2018-10-08  324  	mask = LPCR_DPFD | LPCR_ILE | LPCR_TC | LPCR_AIL | LPCR_LD |
>> 360cae313702cd Paul Mackerras       2018-10-08  325  		LPCR_LPES | LPCR_MER;
>> 360cae313702cd Paul Mackerras       2018-10-08  326  	lpcr = (vc->lpcr & ~mask) | (l2_hv.lpcr & mask);
>> 73937deb4b2d7f Suraj Jitindar Singh 2018-10-08  327  	sanitise_hv_regs(vcpu, &l2_hv);
>> 360cae313702cd Paul Mackerras       2018-10-08  328  	restore_hv_regs(vcpu, &l2_hv);
>> 360cae313702cd Paul Mackerras       2018-10-08  329
>> 360cae313702cd Paul Mackerras       2018-10-08  330  	vcpu->arch.ret = RESUME_GUEST;
>> 360cae313702cd Paul Mackerras       2018-10-08  331  	vcpu->arch.trap = 0;
>> 360cae313702cd Paul Mackerras       2018-10-08  332  	do {
>> 360cae313702cd Paul Mackerras       2018-10-08  333  		if (mftb() >= hdec_exp) {
>> 360cae313702cd Paul Mackerras       2018-10-08  334  			vcpu->arch.trap = BOOK3S_INTERRUPT_HV_DECREMENTER;
>> 360cae313702cd Paul Mackerras       2018-10-08  335  			r = RESUME_HOST;
>> 360cae313702cd Paul Mackerras       2018-10-08  336  			break;
>> 360cae313702cd Paul Mackerras       2018-10-08  337  		}
>> 8c99d34578628b Tianjia Zhang        2020-04-27  338  		r = kvmhv_run_single_vcpu(vcpu, hdec_exp, lpcr);
>> 360cae313702cd Paul Mackerras       2018-10-08  339  	} while (is_kvmppc_resume_guest(r));
>> 360cae313702cd Paul Mackerras       2018-10-08  340
>> 360cae313702cd Paul Mackerras       2018-10-08  341  	/* save L2 state for return */
>> 360cae313702cd Paul Mackerras       2018-10-08  342  	l2_regs = vcpu->arch.regs;
>> 360cae313702cd Paul Mackerras       2018-10-08  343  	l2_regs.msr = vcpu->arch.shregs.msr;
>> 360cae313702cd Paul Mackerras       2018-10-08  344  	delta_purr = vcpu->arch.purr - l2_hv.purr;
>> 360cae313702cd Paul Mackerras       2018-10-08  345  	delta_spurr = vcpu->arch.spurr - l2_hv.spurr;
>> 360cae313702cd Paul Mackerras       2018-10-08  346  	delta_ic = vcpu->arch.ic - l2_hv.ic;
>> 360cae313702cd Paul Mackerras       2018-10-08  347  	delta_vtb = vc->vtb - l2_hv.vtb;
>> 360cae313702cd Paul Mackerras       2018-10-08  348  	save_hv_return_state(vcpu, vcpu->arch.trap, &l2_hv);
>> 360cae313702cd Paul Mackerras       2018-10-08  349
>> 360cae313702cd Paul Mackerras       2018-10-08  350  	/* restore L1 state */
>> 360cae313702cd Paul Mackerras       2018-10-08  351  	vcpu->arch.nested = NULL;
>> 360cae313702cd Paul Mackerras       2018-10-08  352  	vcpu->arch.regs = saved_l1_regs;
>> 360cae313702cd Paul Mackerras       2018-10-08  353  	vcpu->arch.shregs.msr = saved_l1_regs.msr & ~MSR_TS_MASK;
>> 360cae313702cd Paul Mackerras       2018-10-08  354  	/* set L1 MSR TS field according to L2 transaction state */
>> 360cae313702cd Paul Mackerras       2018-10-08  355  	if (l2_regs.msr & MSR_TS_MASK)
>> 360cae313702cd Paul Mackerras       2018-10-08  356  		vcpu->arch.shregs.msr |= MSR_TS_S;
>> 360cae313702cd Paul Mackerras       2018-10-08  357  	vc->tb_offset = saved_l1_hv.tb_offset;
>> 360cae313702cd Paul Mackerras       2018-10-08  358  	restore_hv_regs(vcpu, &saved_l1_hv);
>> 360cae313702cd Paul Mackerras       2018-10-08  359  	vcpu->arch.purr += delta_purr;
>> 360cae313702cd Paul Mackerras       2018-10-08  360  	vcpu->arch.spurr += delta_spurr;
>> 360cae313702cd Paul Mackerras       2018-10-08  361  	vcpu->arch.ic += delta_ic;
>> 360cae313702cd Paul Mackerras       2018-10-08  362  	vc->vtb += delta_vtb;
>> 360cae313702cd Paul Mackerras       2018-10-08  363
>> 360cae313702cd Paul Mackerras       2018-10-08  364  	kvmhv_put_nested(l2);
>> 360cae313702cd Paul Mackerras       2018-10-08  365
>> 360cae313702cd Paul Mackerras       2018-10-08  366  	/* copy l2_hv_state and regs back to guest */
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  367  	if (kvmppc_need_byteswap(vcpu)) {
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  368  		byteswap_hv_regs(&l2_hv);
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  369  		byteswap_pt_regs(&l2_regs);
>> 10b5022db7861a Suraj Jitindar Singh 2018-10-08  370  	}
>> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  371  	vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
>> afe75049303f75 Ravi Bangoria        2020-12-16  372  	err = kvmhv_write_guest_state_and_regs(vcpu, &l2_hv, &l2_regs,
>> afe75049303f75 Ravi Bangoria        2020-12-16  373  					       hv_ptr, regs_ptr);
>> 1508c22f112ce1 Alexey Kardashevskiy 2020-06-09  374  	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
>> 360cae313702cd Paul Mackerras       2018-10-08  375  	if (err)
>> 360cae313702cd Paul Mackerras       2018-10-08  376  		return H_AUTHORITY;
>> 360cae313702cd Paul Mackerras       2018-10-08  377
>> 360cae313702cd Paul Mackerras       2018-10-08  378  	if (r == -EINTR)
>> 360cae313702cd Paul Mackerras       2018-10-08  379  		return H_INTERRUPT;
>> 360cae313702cd Paul Mackerras       2018-10-08  380
>> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  381  	if (vcpu->mmio_needed) {
>> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  382  		kvmhv_nested_mmio_needed(vcpu, regs_ptr);
>> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  383  		return H_TOO_HARD;
>> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  384  	}
>> 873db2cd9a6d7f Suraj Jitindar Singh 2018-12-14  385
>> 360cae313702cd Paul Mackerras       2018-10-08  386  	return vcpu->arch.trap;
>> 360cae313702cd Paul Mackerras       2018-10-08  387  }
>> 360cae313702cd Paul Mackerras       2018-10-08  388
>>
>> :::::: The code at line 264 was first introduced by commit
>> :::::: 360cae313702cdd0b90f82c261a8302fecef030a KVM: PPC: Book3S HV: Nested guest entry via hypercall
>>
>> :::::: TO: Paul Mackerras <paulus@ozlabs.org>
>> :::::: CC: Michael Ellerman <mpe@ellerman.id.au>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e6167885-30e5-d149-bcde-3e9ad9f5d381%40kernel.org.
