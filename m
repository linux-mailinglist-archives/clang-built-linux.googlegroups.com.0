Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV6BYD6QKGQEQB57GQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C875D2B2FA0
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 19:24:25 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id s130sf8400450pgc.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 10:24:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605378264; cv=pass;
        d=google.com; s=arc-20160816;
        b=WyCQ5A3W3MZQbSgfLna25inpqGq0jbROP9bSMOvgY7TqipXMCVRILJbogTb1Hrgk7l
         B3MDQZhCb6kqwgAaF9b9WEWWgTrBTjTFQ9A3iBFjmwyEpAhXE+c4mK4I5MmSjjzygaV3
         4zXweLpmY8npSamAmmjYojFrrDhJ1Lv5fydmxOe4Y1I6pRsLUc2+rWwJ+S6jFgNt3CqF
         KyfUMnPQD9IqNRGX+cbH6nYXArcV846Ap/J2mMqg8sz9ehtj0wN1uppxzWyBpQ/E+JgH
         KpVXggVhcCOFfBBIq2Ugf48jFZn0DLOeKg8/s5zJq1O1om9FVH1hIz0aSnS4o90l3SnZ
         lyOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=qOPBXaA3kWjiT8KaIK8QaI0KuVzCGE149ltnQnCdqpg=;
        b=vkBT3CPLNayGDjfz4jDML5RxineHEp74aNEBb8wDt9Z4V+4V2VJhEnoJ0fMtSW8J6m
         TDNKQAmdD1OAoU8TxQ3kA2TyOaqRY2bwje+GQ3u6deSR9D9AVhEVJEtbu00cnpOKMzJ3
         2hfk1CNQNB93YrpbE2H88OLdhXzCoNKb45a/1jC3xYoEhWFwzg8OeTMK66rwg9dJHflA
         uSzxA1RHWHtjP5xt7CPXqAXvdgEdkiSzKg8zMz636XaYMZM/aK0sLV5m1KDFSX4WI9Ee
         Lve0SxEobjWPv0xY88A3OgZhHkvoI9LL/CYw0zw4tOA9ItEuEf97DcnznZ20PDJupCYV
         BIjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qOPBXaA3kWjiT8KaIK8QaI0KuVzCGE149ltnQnCdqpg=;
        b=o1KXAvKhGGxl+yajFMTqm7xSBCCeGstaimpXvGPlR4a/O0jfb++b7NWfMEBtrx9+1n
         yNFfnNgSzbaWCvt3s8ApGicaid8Prw+PGCIXbaUzOyQArVQx2gBSSwt5i2Ct9B4gaiQP
         /w3XRPAq7SX5TUwn4BiFXeoI9WMnph0xVa4WW7X8DIIsp7coifS8oX/UxqzzQFzR2Bpd
         x2L20YbEN3bqfvlLjClx0ytm2A1sRL3hSyMlRQgvzTQBKXnfvFgtCAvnrD6253o/Q4fq
         uiDn9rZHjI5I9bdoB6D1hA6JmHtroSrPUJ4fP3UbtpSgXRedz9Cd90z6S6b+RojT2Adg
         bVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qOPBXaA3kWjiT8KaIK8QaI0KuVzCGE149ltnQnCdqpg=;
        b=Z9GjubnI1sJWAjoy9z8iruyVnQUqiyt/nuTcaQib4AZRNTHWqer0jPY6pyrjnSCJEE
         C1KY7MdjtMiTcyoarVrAKcMdWD0ZBLxsEfKv15nJwaiL9goK/74MK0f0cg6ktEDJmp8q
         j0TdMgwHJIc8B1p95q+eZNcsBa3dzk5aL2xK3ynqHWHHboRvJiddvyxEejC0AdUjQsYf
         k7+3efuYSxZymyGpwf+0amdOP9DOkfxkF1h08FOQmAfL9nddPjkYcG9f86SgYgc4pbP0
         9+g1azI94Z7OsOAZv+X30LAVRXwEPtVPYY39psad/9nGN3CS9RcYdQ9BwfU+5jvK2kCK
         C/Nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RleLe+RqfPZhZ/u6/ZWZgHPvz4M43jNw0jfQfBTt2LrunQv4H
	/PctILXwoek1MhCu+oEPV04=
X-Google-Smtp-Source: ABdhPJzM3eP2ejN+Vx0qkBQnwDy83hW9EKmPfd594qoRSYst1yF9q6hDH33/INl+npJW1QhfUveAww==
X-Received: by 2002:a63:221d:: with SMTP id i29mr6685818pgi.69.1605378264031;
        Sat, 14 Nov 2020 10:24:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls2316100plr.3.gmail; Sat, 14
 Nov 2020 10:24:23 -0800 (PST)
X-Received: by 2002:a17:902:d698:b029:d6:b974:13c5 with SMTP id v24-20020a170902d698b02900d6b97413c5mr6863309ply.13.1605378263277;
        Sat, 14 Nov 2020 10:24:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605378263; cv=none;
        d=google.com; s=arc-20160816;
        b=SXR/2UAelM83QRIqUWZ4dFCeDS74ZCyjaSVPmC0wTuPabH+G4kb8i9rqOP/lqhBNdU
         19cKAUVzopLrN9PhqFeeoqL0LEnZ7HaOHTYOGu+ovWwkbiwM95+nlkAsv4ZC25SW++bH
         PrHlvYtkX48fxkLXFqYAs8TX328Io6F2YgSjOXyd6f0fZ8O6Dq5GLUhhr5XVvtcyD6Ej
         3tx5NNz04xus3LTjuLIU4ZVz7r/a2sl1g8juxWbfnuIicjp1+h4QilSiIn/K/IdMRk5D
         toC7vEq1YTRjm0pRcR/VCq43Ed5RKr9YBT1JhkNAF7wqSpkn86suKDlFDEZ7/Dm8YC84
         n2eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=3G/aCnEyoCAof5f5FKLALAaFoK8QXzTimwIJZMoJK2w=;
        b=F3009wboSrNYJrGRQEi2+UpaXDswZVHapdepJoTFjYYyJEn04q9R4xfK45JDF1YtQW
         LjoCoXZQwpDyNup9hrwx/D3F93Ky9pDhIZYGk8sHimiDbKwOWLQmXqzxTqz8NmMbdfhB
         B3NO3fh8sSENbmw18oycZUNe1N373tz9PYPZnj7tnMJ7eSz1xI5YB+EIP+3H4gLyYpqC
         1CG78RIF7eT/YeqOJzqu+t2hCPt/wi9xGCGTnS/Jmhjv5Ci5LAwTEOict5nqdajy3Vwq
         a1lVR7DUGaz4w6m3DgSfEEAxNtkVupWxyggIxdolx0NXe326m/KNOhytbTC0QnQ2OkMy
         4BVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id bi5si715599plb.2.2020.11.14.10.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 10:24:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: L+gUDV5Fkps0eM6BbCitF2T5jDr1pkNM8alOpM+xrdGb7vy7E5kM7n4tqPCUuFqS06+2uvZtVH
 UIj0E2uLehYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9805"; a="149860928"
X-IronPort-AV: E=Sophos;i="5.77,478,1596524400"; 
   d="gz'50?scan'50,208,50";a="149860928"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Nov 2020 10:24:21 -0800
IronPort-SDR: 062wHe2tYq6iSmoD5jYM6IDwrKOIMdVyllEwdVcxr6rhFSsRQZsIf6eiEFn8n00ggoZMLpasE3
 fGIzVwkr2aeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,478,1596524400"; 
   d="gz'50?scan'50,208,50";a="367260276"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 14 Nov 2020 10:24:17 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ke0Dh-0000wJ-6w; Sat, 14 Nov 2020 18:24:17 +0000
Date: Sun, 15 Nov 2020 02:23:57 +0800
From: kernel test robot <lkp@intel.com>
To: Giovanni Gherdovich <ggherdovich@suse.cz>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>, Len Brown <lenb@kernel.org>,
	"Rafael J . Wysocki" <rjw@rjwysocki.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jon Grimm <Jon.Grimm@amd.com>,
	Nathan Fontenot <Nathan.Fontenot@amd.com>,
	Yazen Ghannam <Yazen.Ghannam@amd.com>,
	Thomas Lendacky <Thomas.Lendacky@amd.com>
Subject: Re: [PATCH v4 1/3] x86, sched: Calculate frequency invariance for
 AMD systems
Message-ID: <202011150228.11Cx1qz7-lkp@intel.com>
References: <20201112182614.10700-2-ggherdovich@suse.cz>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
In-Reply-To: <20201112182614.10700-2-ggherdovich@suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Giovanni,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/x86/core]
[also build test ERROR on tip/master v5.10-rc3 next-20201113]
[cannot apply to bp/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Giovanni-Gherdovich/Add-support-for-frequency-invariance-to-AMD-EPYC-Zen2/20201113-022732
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 238c91115cd05c71447ea071624a4c9fe661f970
config: arm64-randconfig-r013-20201114 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9a85643cd357e412cff69067bb5c4840e228c2ab)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/3331764ab450bfb6ef0f9a3df70b9ec4f948e54f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Giovanni-Gherdovich/Add-support-for-frequency-invariance-to-AMD-EPYC-Zen2/20201113-022732
        git checkout 3331764ab450bfb6ef0f9a3df70b9ec4f948e54f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/acpi/cppc_acpi.c:854:2: error: implicit declaration of function 'init_freq_invariance_cppc' [-Werror,-Wimplicit-function-declaration]
           init_freq_invariance_cppc();
           ^
   1 error generated.

vim +/init_freq_invariance_cppc +854 drivers/acpi/cppc_acpi.c

   645	
   646	/*
   647	 * An example CPC table looks like the following.
   648	 *
   649	 *	Name(_CPC, Package()
   650	 *			{
   651	 *			17,
   652	 *			NumEntries
   653	 *			1,
   654	 *			// Revision
   655	 *			ResourceTemplate(){Register(PCC, 32, 0, 0x120, 2)},
   656	 *			// Highest Performance
   657	 *			ResourceTemplate(){Register(PCC, 32, 0, 0x124, 2)},
   658	 *			// Nominal Performance
   659	 *			ResourceTemplate(){Register(PCC, 32, 0, 0x128, 2)},
   660	 *			// Lowest Nonlinear Performance
   661	 *			ResourceTemplate(){Register(PCC, 32, 0, 0x12C, 2)},
   662	 *			// Lowest Performance
   663	 *			ResourceTemplate(){Register(PCC, 32, 0, 0x130, 2)},
   664	 *			// Guaranteed Performance Register
   665	 *			ResourceTemplate(){Register(PCC, 32, 0, 0x110, 2)},
   666	 *			// Desired Performance Register
   667	 *			ResourceTemplate(){Register(SystemMemory, 0, 0, 0, 0)},
   668	 *			..
   669	 *			..
   670	 *			..
   671	 *
   672	 *		}
   673	 * Each Register() encodes how to access that specific register.
   674	 * e.g. a sample PCC entry has the following encoding:
   675	 *
   676	 *	Register (
   677	 *		PCC,
   678	 *		AddressSpaceKeyword
   679	 *		8,
   680	 *		//RegisterBitWidth
   681	 *		8,
   682	 *		//RegisterBitOffset
   683	 *		0x30,
   684	 *		//RegisterAddress
   685	 *		9
   686	 *		//AccessSize (subspace ID)
   687	 *		0
   688	 *		)
   689	 *	}
   690	 */
   691	
   692	/**
   693	 * acpi_cppc_processor_probe - Search for per CPU _CPC objects.
   694	 * @pr: Ptr to acpi_processor containing this CPU's logical ID.
   695	 *
   696	 *	Return: 0 for success or negative value for err.
   697	 */
   698	int acpi_cppc_processor_probe(struct acpi_processor *pr)
   699	{
   700		struct acpi_buffer output = {ACPI_ALLOCATE_BUFFER, NULL};
   701		union acpi_object *out_obj, *cpc_obj;
   702		struct cpc_desc *cpc_ptr;
   703		struct cpc_reg *gas_t;
   704		struct device *cpu_dev;
   705		acpi_handle handle = pr->handle;
   706		unsigned int num_ent, i, cpc_rev;
   707		int pcc_subspace_id = -1;
   708		acpi_status status;
   709		int ret = -EFAULT;
   710	
   711		/* Parse the ACPI _CPC table for this CPU. */
   712		status = acpi_evaluate_object_typed(handle, "_CPC", NULL, &output,
   713				ACPI_TYPE_PACKAGE);
   714		if (ACPI_FAILURE(status)) {
   715			ret = -ENODEV;
   716			goto out_buf_free;
   717		}
   718	
   719		out_obj = (union acpi_object *) output.pointer;
   720	
   721		cpc_ptr = kzalloc(sizeof(struct cpc_desc), GFP_KERNEL);
   722		if (!cpc_ptr) {
   723			ret = -ENOMEM;
   724			goto out_buf_free;
   725		}
   726	
   727		/* First entry is NumEntries. */
   728		cpc_obj = &out_obj->package.elements[0];
   729		if (cpc_obj->type == ACPI_TYPE_INTEGER)	{
   730			num_ent = cpc_obj->integer.value;
   731		} else {
   732			pr_debug("Unexpected entry type(%d) for NumEntries\n",
   733					cpc_obj->type);
   734			goto out_free;
   735		}
   736		cpc_ptr->num_entries = num_ent;
   737	
   738		/* Second entry should be revision. */
   739		cpc_obj = &out_obj->package.elements[1];
   740		if (cpc_obj->type == ACPI_TYPE_INTEGER)	{
   741			cpc_rev = cpc_obj->integer.value;
   742		} else {
   743			pr_debug("Unexpected entry type(%d) for Revision\n",
   744					cpc_obj->type);
   745			goto out_free;
   746		}
   747		cpc_ptr->version = cpc_rev;
   748	
   749		if (!is_cppc_supported(cpc_rev, num_ent))
   750			goto out_free;
   751	
   752		/* Iterate through remaining entries in _CPC */
   753		for (i = 2; i < num_ent; i++) {
   754			cpc_obj = &out_obj->package.elements[i];
   755	
   756			if (cpc_obj->type == ACPI_TYPE_INTEGER)	{
   757				cpc_ptr->cpc_regs[i-2].type = ACPI_TYPE_INTEGER;
   758				cpc_ptr->cpc_regs[i-2].cpc_entry.int_value = cpc_obj->integer.value;
   759			} else if (cpc_obj->type == ACPI_TYPE_BUFFER) {
   760				gas_t = (struct cpc_reg *)
   761					cpc_obj->buffer.pointer;
   762	
   763				/*
   764				 * The PCC Subspace index is encoded inside
   765				 * the CPC table entries. The same PCC index
   766				 * will be used for all the PCC entries,
   767				 * so extract it only once.
   768				 */
   769				if (gas_t->space_id == ACPI_ADR_SPACE_PLATFORM_COMM) {
   770					if (pcc_subspace_id < 0) {
   771						pcc_subspace_id = gas_t->access_width;
   772						if (pcc_data_alloc(pcc_subspace_id))
   773							goto out_free;
   774					} else if (pcc_subspace_id != gas_t->access_width) {
   775						pr_debug("Mismatched PCC ids.\n");
   776						goto out_free;
   777					}
   778				} else if (gas_t->space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) {
   779					if (gas_t->address) {
   780						void __iomem *addr;
   781	
   782						addr = ioremap(gas_t->address, gas_t->bit_width/8);
   783						if (!addr)
   784							goto out_free;
   785						cpc_ptr->cpc_regs[i-2].sys_mem_vaddr = addr;
   786					}
   787				} else {
   788					if (gas_t->space_id != ACPI_ADR_SPACE_FIXED_HARDWARE || !cpc_ffh_supported()) {
   789						/* Support only PCC ,SYS MEM and FFH type regs */
   790						pr_debug("Unsupported register type: %d\n", gas_t->space_id);
   791						goto out_free;
   792					}
   793				}
   794	
   795				cpc_ptr->cpc_regs[i-2].type = ACPI_TYPE_BUFFER;
   796				memcpy(&cpc_ptr->cpc_regs[i-2].cpc_entry.reg, gas_t, sizeof(*gas_t));
   797			} else {
   798				pr_debug("Err in entry:%d in CPC table of CPU:%d \n", i, pr->id);
   799				goto out_free;
   800			}
   801		}
   802		per_cpu(cpu_pcc_subspace_idx, pr->id) = pcc_subspace_id;
   803	
   804		/*
   805		 * Initialize the remaining cpc_regs as unsupported.
   806		 * Example: In case FW exposes CPPC v2, the below loop will initialize
   807		 * LOWEST_FREQ and NOMINAL_FREQ regs as unsupported
   808		 */
   809		for (i = num_ent - 2; i < MAX_CPC_REG_ENT; i++) {
   810			cpc_ptr->cpc_regs[i].type = ACPI_TYPE_INTEGER;
   811			cpc_ptr->cpc_regs[i].cpc_entry.int_value = 0;
   812		}
   813	
   814	
   815		/* Store CPU Logical ID */
   816		cpc_ptr->cpu_id = pr->id;
   817	
   818		/* Parse PSD data for this CPU */
   819		ret = acpi_get_psd(cpc_ptr, handle);
   820		if (ret)
   821			goto out_free;
   822	
   823		/* Register PCC channel once for all PCC subspace ID. */
   824		if (pcc_subspace_id >= 0 && !pcc_data[pcc_subspace_id]->pcc_channel_acquired) {
   825			ret = register_pcc_channel(pcc_subspace_id);
   826			if (ret)
   827				goto out_free;
   828	
   829			init_rwsem(&pcc_data[pcc_subspace_id]->pcc_lock);
   830			init_waitqueue_head(&pcc_data[pcc_subspace_id]->pcc_write_wait_q);
   831		}
   832	
   833		/* Everything looks okay */
   834		pr_debug("Parsed CPC struct for CPU: %d\n", pr->id);
   835	
   836		/* Add per logical CPU nodes for reading its feedback counters. */
   837		cpu_dev = get_cpu_device(pr->id);
   838		if (!cpu_dev) {
   839			ret = -EINVAL;
   840			goto out_free;
   841		}
   842	
   843		/* Plug PSD data into this CPU's CPC descriptor. */
   844		per_cpu(cpc_desc_ptr, pr->id) = cpc_ptr;
   845	
   846		ret = kobject_init_and_add(&cpc_ptr->kobj, &cppc_ktype, &cpu_dev->kobj,
   847				"acpi_cppc");
   848		if (ret) {
   849			per_cpu(cpc_desc_ptr, pr->id) = NULL;
   850			kobject_put(&cpc_ptr->kobj);
   851			goto out_free;
   852		}
   853	
 > 854		init_freq_invariance_cppc();
   855	
   856		kfree(output.pointer);
   857		return 0;
   858	
   859	out_free:
   860		/* Free all the mapped sys mem areas for this CPU */
   861		for (i = 2; i < cpc_ptr->num_entries; i++) {
   862			void __iomem *addr = cpc_ptr->cpc_regs[i-2].sys_mem_vaddr;
   863	
   864			if (addr)
   865				iounmap(addr);
   866		}
   867		kfree(cpc_ptr);
   868	
   869	out_buf_free:
   870		kfree(output.pointer);
   871		return ret;
   872	}
   873	EXPORT_SYMBOL_GPL(acpi_cppc_processor_probe);
   874	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011150228.11Cx1qz7-lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
XAIA

--qDbXVdCdHGoSgWSk--
