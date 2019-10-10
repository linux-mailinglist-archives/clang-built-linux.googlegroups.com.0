Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6C7PWAKGQER7EY3NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A68D220C
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 09:44:20 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id k184sf2225042wmk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 00:44:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570693460; cv=pass;
        d=google.com; s=arc-20160816;
        b=vIxlqzukLOXhEpnky4ci1UNrPsnDjcbS9nE6pd1cop6DZ2grRc3wnUpS9hWVZ3cVKo
         xG2a7nje4H8D+DBwfBl1Wp/OQ6zLcqawYGZdMyIcS9pFZSFXm8uDkrXMBWMT3R7l8RKw
         exRpAkgz6ZodgQ5F/X/Aczw6Fe8RueBGy10JSPnrjEESoqE1qOXOVpf4j3Q1AZ1gs1ar
         TV87G/iWUsaTXBoy3RdGlRK008N1FtfvTb7OZwhO4nX6/PAu3qRKngfxGhdgG4gjz/RN
         uTZXGnXvGEoilMpP1iDtjUEJDTDshBV/zCai3VItMpjnvn0HHwlTWWEB/SmCMnv7U4+S
         iYTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=mqLNhUAHSFb4dIsMUpdAzdNGo1xfFSXGnQbvTeA5Xj4=;
        b=jGXyEL/qzT26952FYJJLRNiUsA+rzURY5PvgotsRUHLo+Qre4UgdJmKIAzr/CNH8Rv
         DCF4HU7RQosJ56v9By+qcGs0snIHD84vSte4FVp6tk1tcnL3TKAhyJwfs3KU0REZXw83
         JmUaQb32AXC/VX/IwJoCO9vrT1CUwFkJZ/ruRMivyeEM637X3CJMXqHP/hDOL94xZuEv
         oRUuUl4uuXNJaCIf5bVW6wF8fkZHqxZxED570ROjq3d4ihioYyHxBVKGWc2XgagNohLR
         HKfZBc+qEN6jzgsY16chT9Ut+5vn5o6eoGPUFyRu06bSvm2WbgHr5Ow971CEAd/vrmP2
         oYeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ym9V/kaM";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqLNhUAHSFb4dIsMUpdAzdNGo1xfFSXGnQbvTeA5Xj4=;
        b=X1fJzkpBFLZLjfSaQVI9F+QABtPKfPW126X+ZacH3MXV99n549JhHQkBPAml+mfhbL
         0Q+0B5VQNUCHzudAlL8pU1x/bb+PvHrfLH/f4lIs45k7Zuja2Hb7UdhzQCek7nMBk7uM
         yH3LXKTvNFqxq3QxLDx+7xRnAn4GmhWSlARAzkSC9xigdxmIbm8ZgU2HOcrPpyZF2hjH
         bea5XfPwavTTNYsXjgc3zNusF+6PgMF0hSH1PXxJ6sLfzEco6YmxYtqXsOF+EQRDOstm
         hDrnmZ0IGi25I13QRz6Tg+D2R6TGk4HVf0ZGg1gAYp18u879WkjJD97txavczsKPDK9L
         DBOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqLNhUAHSFb4dIsMUpdAzdNGo1xfFSXGnQbvTeA5Xj4=;
        b=KVMv0W3vrFifsnAG1zX5hFCUVeHiwP4REhoARiiNhXvR0pTzpsQVizqBbPcUIUplUn
         6yZjKqr7Q5G+fw3vC7nDbVaeRSLW/t+eNnkSEM7erPBb3s8+JFQNSZ0OoQAjnt5l08/K
         5ZbnvykKh1T5RcVaok6F9wPAeWkDSQdg3Fs2ttx1i3+Ac3utZAFXUHrB5opcIsv8AHfj
         SmuADNB1MRGJqszqpvA2apqQKFdPvytDIyf6V9EksGctGocCpyJH5MxMh/LRzG7WV2xz
         VsoY8N/oXRidvU2w7cp6wZzZbGn2yLPehsDo8uqXNJiNnO/qj4xR2cqcAe7L0ijj6M9S
         mibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqLNhUAHSFb4dIsMUpdAzdNGo1xfFSXGnQbvTeA5Xj4=;
        b=Y/V3umGtffY8rOYAVhUYkLDyinawoxmMYPJxxIEiFePvY+/qX4pq3Oe9MThpVpASv7
         cExwsMKcIykcqrx4Ju8X63c6r/zWrPsCIfCcbXQkxq/OB68O09dkq3KYt013z1v7rzUD
         dqobkFUOwwoVH0eZoZmStmcZl7KY5Re4u45ItsSmgSxth200e7VSUYXzHFEyOSrykyCd
         ILmi7638JHMxrjEUm+qHpBxiuHCqm3jPE7xA5n40mWIoDAmYSfCPM4VLwXjY0puuwBaT
         tTDw5wVWcvkGzJud1u8MmBdhEMUva6Y+o6wvrOAc6w+Nygg588oldr7HvCo5+acC76/M
         bccA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX7jd9ucUMD2wOxNa1A6C+ykxjClcXQxP8wdCX8BoIE4lnytrU+
	B/j5UDsd3d4Y3oOjQVPaC74=
X-Google-Smtp-Source: APXvYqw1UUzweRgDWUcqgxtWPa+/xd6Tw0eoikUCSvFFVNV3gsC45ekrNlnaDgOKO3J8ZrnU9duahQ==
X-Received: by 2002:adf:dbcf:: with SMTP id e15mr7294059wrj.134.1570693459932;
        Thu, 10 Oct 2019 00:44:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4282:: with SMTP id k2ls978011wrq.2.gmail; Thu, 10 Oct
 2019 00:44:19 -0700 (PDT)
X-Received: by 2002:adf:9403:: with SMTP id 3mr7576653wrq.281.1570693459338;
        Thu, 10 Oct 2019 00:44:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570693459; cv=none;
        d=google.com; s=arc-20160816;
        b=UDpuE0CfIHuBB+ATE+2tw+cmkILuN4i1W19CKmR95nYT/tARXkSmHj0B5KOrLyiswW
         CVvTEi55ucDdr8ebrbiLiFU7Uro/sHb2sPu3k8+ztm6dn3aWKhuU9KoizeSZbCSAGx+S
         D+R1InOdggfHBNkokWf4mx20CRCF0OYvhYjJ84WQK//bJiZm9yA0i//dR5i5ExKtQQ/K
         32D3EflgKv8aOU3VmqydaKKXU+ov2gnFmxkC+9EBM8WT1FitcQeYYlUFY9eaBa2KXpT6
         FA2UrmyzdmBapqVDMkaFER3H6Rset24zl8pTpHH0WejuCF+lTYEJ627/ZYDvO42/Z1Zp
         1NNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7C7wds1bVdecdkCfoLRKR2i0lXXbm1mnp82jymGtP8k=;
        b=j+6qbfB7MNBE9ipeNo43gcSQdbsCLB9nlIIdG11cL42i+a6uyA5221Q5VVgeIQVcUK
         19MHdwvdvbTi2h1+nVEMnuPoKKyaFOJvJdQ3nVo9MZK9J/neZh7SAAliTRmSoWDJiuHQ
         xw/Ao+ZVROVbL24eWAOdaiTftJH6+XasPFWuD9Kci3O6mSZtwN1hKfdRLx3uuUTVYdcT
         4a7aNLg5f3liI0tUCdSOpWkjJfJswabmdu65pFTS32K41TIFlg78Ppf1kRcYuRicBNfa
         yPs5Se+pqr6rGvvWASUjaS3iE5i149Shh16M1Y4Ms6vmqMlSn9awVhWWH1rCy+FmF/2y
         KQVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ym9V/kaM";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p5si206430wmg.0.2019.10.10.00.44.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 00:44:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id b9so6546934wrs.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 00:44:19 -0700 (PDT)
X-Received: by 2002:a5d:514c:: with SMTP id u12mr7129871wrt.147.1570693458771;
        Thu, 10 Oct 2019 00:44:18 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id e15sm6256794wrt.94.2019.10.10.00.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 00:44:18 -0700 (PDT)
Date: Thu, 10 Oct 2019 00:44:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] KVM: nVMX: Don't leak L1 MMIO regions to L2
Message-ID: <20191010074416.GA586929@archlinux-threadripper>
References: <201910091403.dH5Gc3Jr%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910091403.dH5Gc3Jr%lkp@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Ym9V/kaM";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Wed, Oct 09, 2019 at 02:23:55PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20191009000343.13495-1-jmattson@google.com>
> References: <20191009000343.13495-1-jmattson@google.com>
> TO: Jim Mattson <jmattson@google.com>
> CC: kvm@vger.kernel.org, Liran Alon <liran.alon@oracle.com>, Sean Christo=
pherson <sean.j.christopherson@intel.com>, Paolo Bonzini <pbonzini@redhat.c=
om>, Jim Mattson <jmattson@google.com>, Dan Cross <dcross@google.com>, Pete=
r Shier <pshier@google.com>, Jim Mattson <jmattson@google.com>, Dan Cross <=
dcross@google.com>, Peter Shier <pshier@google.com>
> CC: Jim Mattson <jmattson@google.com>, Dan Cross <dcross@google.com>, Pet=
er Shier <pshier@google.com>
>=20
> Hi Jim,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on kvm/linux-next]
> [cannot apply to v5.4-rc2 next-20191008]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Jim-Mattson/KVM-nVMX-Don=
-t-leak-L1-MMIO-regions-to-L2/20191009-120808
> base:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git linux-next
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 41c934acaf85=
39dedad4b48bbc88580c74fed25a)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> arch/x86/kvm/vmx/nested.c:3253:11: warning: enumeration value 'ENTER_V=
MX_SUCCESS' not handled in switch [-Wswitch]
>                    switch (status) {
>                            ^
>    1 warning generated.
>=20
> vim +/ENTER_VMX_SUCCESS +3253 arch/x86/kvm/vmx/nested.c
>=20
>   3180=09
>   3181	/*
>   3182	 * nested_vmx_run() handles a nested entry, i.e., a VMLAUNCH or VM=
RESUME on L1
>   3183	 * for running an L2 nested guest.
>   3184	 */
>   3185	static int nested_vmx_run(struct kvm_vcpu *vcpu, bool launch)
>   3186	{
>   3187		struct vmcs12 *vmcs12;
>   3188		enum enter_vmx_status status;
>   3189		struct vcpu_vmx *vmx =3D to_vmx(vcpu);
>   3190		u32 interrupt_shadow =3D vmx_get_interrupt_shadow(vcpu);
>   3191=09
>   3192		if (!nested_vmx_check_permission(vcpu))
>   3193			return 1;
>   3194=09
>   3195		if (!nested_vmx_handle_enlightened_vmptrld(vcpu, launch))
>   3196			return 1;
>   3197=09
>   3198		if (!vmx->nested.hv_evmcs && vmx->nested.current_vmptr =3D=3D -1u=
ll)
>   3199			return nested_vmx_failInvalid(vcpu);
>   3200=09
>   3201		vmcs12 =3D get_vmcs12(vcpu);
>   3202=09
>   3203		/*
>   3204		 * Can't VMLAUNCH or VMRESUME a shadow VMCS. Despite the fact
>   3205		 * that there *is* a valid VMCS pointer, RFLAGS.CF is set
>   3206		 * rather than RFLAGS.ZF, and no error number is stored to the
>   3207		 * VM-instruction error field.
>   3208		 */
>   3209		if (vmcs12->hdr.shadow_vmcs)
>   3210			return nested_vmx_failInvalid(vcpu);
>   3211=09
>   3212		if (vmx->nested.hv_evmcs) {
>   3213			copy_enlightened_to_vmcs12(vmx);
>   3214			/* Enlightened VMCS doesn't have launch state */
>   3215			vmcs12->launch_state =3D !launch;
>   3216		} else if (enable_shadow_vmcs) {
>   3217			copy_shadow_to_vmcs12(vmx);
>   3218		}
>   3219=09
>   3220		/*
>   3221		 * The nested entry process starts with enforcing various prerequ=
isites
>   3222		 * on vmcs12 as required by the Intel SDM, and act appropriately =
when
>   3223		 * they fail: As the SDM explains, some conditions should cause t=
he
>   3224		 * instruction to fail, while others will cause the instruction t=
o seem
>   3225		 * to succeed, but return an EXIT_REASON_INVALID_STATE.
>   3226		 * To speed up the normal (success) code path, we should avoid ch=
ecking
>   3227		 * for misconfigurations which will anyway be caught by the proce=
ssor
>   3228		 * when using the merged vmcs02.
>   3229		 */
>   3230		if (interrupt_shadow & KVM_X86_SHADOW_INT_MOV_SS)
>   3231			return nested_vmx_failValid(vcpu,
>   3232				VMXERR_ENTRY_EVENTS_BLOCKED_BY_MOV_SS);
>   3233=09
>   3234		if (vmcs12->launch_state =3D=3D launch)
>   3235			return nested_vmx_failValid(vcpu,
>   3236				launch ? VMXERR_VMLAUNCH_NONCLEAR_VMCS
>   3237				       : VMXERR_VMRESUME_NONLAUNCHED_VMCS);
>   3238=09
>   3239		if (nested_vmx_check_controls(vcpu, vmcs12))
>   3240			return nested_vmx_failValid(vcpu, VMXERR_ENTRY_INVALID_CONTROL_F=
IELD);
>   3241=09
>   3242		if (nested_vmx_check_host_state(vcpu, vmcs12))
>   3243			return nested_vmx_failValid(vcpu, VMXERR_ENTRY_INVALID_HOST_STAT=
E_FIELD);
>   3244=09
>   3245		/*
>   3246		 * We're finally done with prerequisite checking, and can start w=
ith
>   3247		 * the nested entry.
>   3248		 */
>   3249		vmx->nested.nested_run_pending =3D 1;
>   3250		status =3D nested_vmx_enter_non_root_mode(vcpu, true);
>   3251		if (status !=3D ENTER_VMX_SUCCESS) {
>   3252			vmx->nested.nested_run_pending =3D 0;
> > 3253			switch (status) {
>   3254			case ENTER_VMX_VMFAIL:
>   3255				return nested_vmx_failValid(vcpu,
>   3256					VMXERR_ENTRY_INVALID_CONTROL_FIELD);
>   3257			case ENTER_VMX_VMEXIT:
>   3258				return 1;
>   3259			case ENTER_VMX_ERROR:
>   3260				return 0;
>   3261			}
>   3262		}
>   3263=09
>   3264		/* Hide L1D cache contents from the nested guest.  */
>   3265		vmx->vcpu.arch.l1tf_flush_l1d =3D true;
>   3266=09
>   3267		/*
>   3268		 * Must happen outside of nested_vmx_enter_non_root_mode() as it =
will
>   3269		 * also be used as part of restoring nVMX state for
>   3270		 * snapshot restore (migration).
>   3271		 *
>   3272		 * In this flow, it is assumed that vmcs12 cache was
>   3273		 * trasferred as part of captured nVMX state and should
>   3274		 * therefore not be read from guest memory (which may not
>   3275		 * exist on destination host yet).
>   3276		 */
>   3277		nested_cache_shadow_vmcs12(vcpu, vmcs12);
>   3278=09
>   3279		/*
>   3280		 * If we're entering a halted L2 vcpu and the L2 vcpu won't be
>   3281		 * awakened by event injection or by an NMI-window VM-exit or
>   3282		 * by an interrupt-window VM-exit, halt the vcpu.
>   3283		 */
>   3284		if ((vmcs12->guest_activity_state =3D=3D GUEST_ACTIVITY_HLT) &&
>   3285		    !(vmcs12->vm_entry_intr_info_field & INTR_INFO_VALID_MASK) &&
>   3286		    !(vmcs12->cpu_based_vm_exec_control & CPU_BASED_VIRTUAL_NMI_P=
ENDING) &&
>   3287		    !((vmcs12->cpu_based_vm_exec_control & CPU_BASED_VIRTUAL_INTR=
_PENDING) &&
>   3288		      (vmcs12->guest_rflags & X86_EFLAGS_IF))) {
>   3289			vmx->nested.nested_run_pending =3D 0;
>   3290			return kvm_vcpu_halt(vcpu);
>   3291		}
>   3292		return 1;
>   3293	}
>   3294=09
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>=20

While the warning is not technically wrong, we cannot reach this switch
statement if status =3D=3D ENTER_VMX_SUCCESS. I feel like this diagnostic
could be improved. I guess a default statement could be added
regardless...

https://godbolt.org/z/kEfe8Z

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191010074416.GA586929%40archlinux-threadripper.
