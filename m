Return-Path: <clang-built-linux+bncBAABBLGUQT3QKGQEQJFUWBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id A27871F5B6E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 20:45:02 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id m2sf2053092plt.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 11:45:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591814701; cv=pass;
        d=google.com; s=arc-20160816;
        b=mWflSE2hxPPj45dTNFB2wfBCdTXzU3dmntb/fqAU9dRD3iV+NfvkWCISfS78VPD2ND
         I4Q8Ung8knBnvyUofJHiudpHWpot+2ysk7jUyaUE/G/9VaFA8ou1FA6Dtox2XFBFGQmE
         rHIdMiXYBRlagLVyP16QnjJv/ZqClrG6NlPpaA9z/ZKtiQCbAxjdHHamnCoNKcu+r385
         i1G9we1mamWM2irUCcLTWCYjjfNi5Inh1MEym+uEZ3MgA96R8FVtCLf7e9Rt8dQ7KY40
         SHgo2Hgo+Azxr1w53xeu8gt8QYsfIWJauRJHapjIeDq2AfFlCCEyRpN+KkHv8jGtq+UL
         +pcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:dkim-filter:sender:dkim-signature;
        bh=+myZfM6qPID2NGhFDbh/0CgqDSZVtUCaEfg6AVhDFkQ=;
        b=gyHXYN1rfuY7wMimgXN21gTUZQruirBBvQFUtEhhJDTJhQ6sZNfeXqPJe25UBT4Ggj
         xL1O4530MUEisniMD7hKS5YdkLlVkLbw9nyBhFqK8pIubyytqOl5rtQUqVnpGqF2nlkA
         lnGoII/9sJ0vnfQ+Im8be0tPXkG2/CWMUWjESEkTRMRRPZOcQUGUHWYyGKhEoQt80GuF
         jbfP/g4CzZmdzotOUWEGSCK32MZFnQTOLMJ6tz3WzrjGWh3Tyfr6Bu29pBD0LrE9wWaE
         KhxcqRcPeUQI9jBrtvXTtHPqx0FeVr4O4PuwNQHykdUsIFq2L/lHFs5fy6i8j1Kt4hV8
         PMug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Lcdd7tGC;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+myZfM6qPID2NGhFDbh/0CgqDSZVtUCaEfg6AVhDFkQ=;
        b=jyfOUBIY56BgKhDocp552jkZ7I+lb4zwriepMwV3WzZIYDFInoGyXWi9zYSky9Sd40
         ZzMS0TQQMEDvyfqH2l63p2S2CFKVcxVaFpGJFIZ1d4XVLnLeXVUTCFcBwnmjSvTtZqxB
         gj2I6ADikw9Ymukyt916vtKDSyytuyHHEIotgNFhgvi3pYxa1fI5XWCD4d9wpopJEnwB
         bJ9uhIHbWW5iqXGtWjOXJBJVp+Y4yxqLy5WtO8EOppdN1tDbxUFOM851ReRRFbiyt2Bn
         qWbqRqXLRRUG9Mq7qJx9BLpudmp48z3Tx9yA/xWU6SR/XP1hRh06IDKm++QMInSB5J10
         yInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+myZfM6qPID2NGhFDbh/0CgqDSZVtUCaEfg6AVhDFkQ=;
        b=Z4iaEEthkT9YuswlPFfolidpzkLAPNZBPNvVUy2A2MUofVpjo+2LhOyDOBqIfbPuyi
         h+cJeZhs19SKU3obnF0dCz/ZT3rRnkOoVkHLDnSys5VotgkBBHfwxS4hC/ppBgYXvKVi
         6ngjk30eOSd6PSC2rZHMqQcIJ/QU299jetAMk9s+mJhpcRf513Yb+hQAbSJi8XDIgIkc
         iXXRu91NQIO8ltSSsNOxWIQgvvuRLL+2DhIQSNkCb7mPqweqBv2/hBMdhsE7L+6zK2d1
         vHx2IzGCOAh/XWSQ3YRafCBFRxgYrBbFf54fP+dRpoNOP9mDLE4xYL1DzJAMmnZx41XC
         /kcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332L1IpD76HhsjobufiyNUnxtV2kX0gniIeTaEv8nghNqKvD9nv
	OAcGwVCAsG65qLiw9HwJZcs=
X-Google-Smtp-Source: ABdhPJyI+3+49IApsVj8xeV2fN84Exc/RZW68JL6dmyICOhsLBSAc7h5BLSoCj0GgYX2gj7F8PjEZQ==
X-Received: by 2002:a17:902:a714:: with SMTP id w20mr4144392plq.125.1591814700961;
        Wed, 10 Jun 2020 11:45:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:94b5:: with SMTP id a21ls7444979pfl.5.gmail; Wed, 10 Jun
 2020 11:45:00 -0700 (PDT)
X-Received: by 2002:aa7:9f11:: with SMTP id g17mr3906591pfr.278.1591814700566;
        Wed, 10 Jun 2020 11:45:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591814700; cv=none;
        d=google.com; s=arc-20160816;
        b=ENXriYF8XLeoAvTioqHZELFFgTHgqO8sdgpKYkt9YIyzTw/3J2TBwobLFZkhWIuwD2
         D2n5jt8mLGf0w7FpcZC83Tc7HFQQTOGJebxgoNiSSGaVWeNab6fFKNWobSMwj9soiplG
         0i7uPJ4H29fiEi30NfaCxJEiRoZi3ArOEC4kS1+hhEhIVxxYy4fKnCswxD25iUl9zi/b
         R0zeTgvo3DsquWONvO7m8IDuHnTHkHjDJMS1+Oto8QDMkubkPMSUjD5Dp1fufGI94Ueu
         BmZ5tFiJYvRgYUS5JhA3ibIJmYJ3kZwxw+IjR1KeBDhD+tItmmwuiC+WU3FTRCUEXRuW
         Pybg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=WKPcY/e3jl/zV0ltgVNQfGIUBw/oHdJO0Awy+2fvE8M=;
        b=dy58f7UnJXonzQg3wn7IaeStLslaI1vIRdzLi5NqX/4XS+mPkwBUesu0JyZhyhfrDP
         8oawP3qUXO7AovDqzdlmv1ixZeLqIfjtbLXrdVHuhenj3s3yhO9euO2W52wzUwrVs+jC
         nEdWg4RmdrxY4RyHJyeYvu8o5Pc7UnG80UWLPlnn4ggWHqRjFSEr2IWiMEBu1gVg621j
         QbOGSmruUbk074FuDWRV+cZnPQtt/r4nEGLWaeyYsNodhD/yIK+otQemUbVgFnAjPlJH
         YtJ+bH7gaeyiEf5/NdrYI3meKtn+bRCDV6T/GsjN8J915mVsOtj6prIrG8T9CGJYjSkZ
         8ssQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Lcdd7tGC;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id x70si77148pfc.6.2020.06.10.11.45.00
        for <clang-built-linux@googlegroups.com>;
        Wed, 10 Jun 2020 11:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from [192.168.0.108] (user-0c9haon.cable.mindspring.com [24.152.171.23])
	by linux.microsoft.com (Postfix) with ESMTPSA id 9257F20B717B;
	Wed, 10 Jun 2020 11:44:59 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9257F20B717B
Subject: Re: [PATCH][RFC] kdump: append kernel build-id string to VMCOREINFO
To: Baoquan He <bhe@redhat.com>
Cc: Dave Young <dyoung@redhat.com>, clang-built-linux@googlegroups.com,
 Tyler Hicks <tyhicks@linux.microsoft.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Vivek Goyal <vgoyal@redhat.com>
References: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
 <20200610022027.GI20367@MiWiFi-R3L-srv>
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
Message-ID: <2a68e2ed-c937-8ef7-5eea-5fe825df3cc8@linux.microsoft.com>
Date: Wed, 10 Jun 2020 11:44:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200610022027.GI20367@MiWiFi-R3L-srv>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: vijayb@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=Lcdd7tGC;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

Thanks Baoquan.  See inline.

On 6/9/2020 7:20 PM, Baoquan He wrote:
> On 06/04/20 at 05:01pm, Vijay Balakrishna wrote:
>> Make kernel GNU build-id available in VMCOREINFO.  Having
>> build-id in VMCOREINFO facilitates presenting appropriate kernel
>> namelist image with debug information file to kernel crash dump
>> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
>> key for crash analysis automation.
> 
> Looks like a good idea. I have several concerns, please check below inline
> comments.
> 
>>
>> Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
>> ---
>> Regarding if this patch is necessary or matching of linux_banner
>> and OSRELEASE in VMCOREINFO employed by crash(8) meets the
>> need -- IMO, build-id approach more foolproof, in most instances it
>> is a cryptographic hash generated using internal code/ELF bits unlike
>> kernel version string upon which linux_banner is based that is
>> external to the code.  I feel each is intended for a different purpose.
>> Also OSRELEASE is not suitable when two different kernel builds
>> from same version with different features enabled.
>>
>> Currently for most linux (and non-linux) systems build-id can be
>> extracted using standard methods for file types such as user mode crash
>> dumps, shared libraries, loadable kernel modules etc.  This is an
>> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
>> some uniformity for automation tools.
> 
> These two paragraphs can be added to log too?
Sure, I will move it too commit log in my next version.

> 
>>
>>   include/linux/crash_core.h |  6 +++++
>>   kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
>>   2 files changed, 56 insertions(+)
>>
>> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
>> index 525510a9f965..6594dbc34a37 100644
>> --- a/include/linux/crash_core.h
>> +++ b/include/linux/crash_core.h
>> @@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
>>   
>>   #define VMCOREINFO_OSRELEASE(value) \
>>   	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
>> +#define VMCOREINFO_BUILD_ID(value) \
>> +	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
>>   #define VMCOREINFO_PAGESIZE(value) \
>>   	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
>>   #define VMCOREINFO_SYMBOL(name) \
>> @@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
>>   extern size_t vmcoreinfo_size;
>>   extern u32 *vmcoreinfo_note;
>>   
>> +/* raw contents of kernel .notes section */
>> +extern const void __start_notes __weak;
>> +extern const void __stop_notes __weak;
>> +
>>   Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>>   			  void *data, size_t data_len);
>>   void final_note(Elf_Word *buf);
>> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
>> index 9f1557b98468..c094db478803 100644
>> --- a/kernel/crash_core.c
>> +++ b/kernel/crash_core.c
>> @@ -11,6 +11,8 @@
>>   #include <asm/page.h>
>>   #include <asm/sections.h>
>>   
>> +#include <crypto/sha.h>
>> +
>>   /* vmcoreinfo stuff */
>>   unsigned char *vmcoreinfo_data;
>>   size_t vmcoreinfo_size;
>> @@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
>>   }
>>   EXPORT_SYMBOL(paddr_vmcoreinfo_note);
>>   
>> +#define NOTES_SIZE (&__stop_notes - &__start_notes)
>> +#define BUILD_ID_MAX SHA1_DIGEST_SIZE
>> +#define NT_GNU_BUILD_ID 3
>> +
>> +struct elf_note_section {
>> +	struct elf_note	n_hdr;
>> +	u8 n_data[];
>> +};
>> +
>> +/*
>> + * Add build ID from .notes section as generated by the GNU ld(1)
>> + * or LLVM lld(1) --build-id option.
>> + */
>> +static void add_build_id_vmcoreinfo(void)
>> +{
>> +	char build_id[BUILD_ID_MAX * 2 + 1];
> 
> Here, could you tell why we need two times the build id length?

GNU build-id is binary data, it is converted to hex (string) 
representation here.

> 
>> +	int n_remain = NOTES_SIZE;
>> +
>> +	while (n_remain >= sizeof(struct elf_note)) {
>> +		const struct elf_note_section *g_build_id =
> 
> Here naming of 'g_build_id' looks a little weird. We usually define
> global variable with 'g_xxxx'. Maybe we can change it to 'note_sec' or
> something else, because not all iterated elf_note_section is build_id
> related.

I will rename it in next version.

Vijay
> 
>> +			&__start_notes + NOTES_SIZE - n_remain;
>> +		const u32 n_namesz = g_build_id->n_hdr.n_namesz;
>> +
>> +		if (g_build_id->n_hdr.n_type == NT_GNU_BUILD_ID &&
>> +		    n_namesz != 0 &&
>> +		    !strcmp((char *)&g_build_id->n_data[0], "GNU")) {
>> +			if (g_build_id->n_hdr.n_descsz <= BUILD_ID_MAX) {
>> +				const u32 n_descsz = g_build_id->n_hdr.n_descsz;
>> +				const u8 *s = &g_build_id->n_data[n_namesz];
>> +
>> +				s = PTR_ALIGN(s, 4);
>> +				bin2hex(build_id, s, n_descsz);
>> +				build_id[2 * n_descsz] = '\0';
>> +				VMCOREINFO_BUILD_ID(build_id);
>> +				return;
>> +			}
>> +			pr_warn("Build ID is too large to include in vmcoreinfo: %lu > %lu\n",
>> +				g_build_id->n_hdr.n_descsz,
>> +				BUILD_ID_MAX);
>> +			return;
>> +		}
>> +		n_remain -= sizeof(struct elf_note) +
>> +			ALIGN(g_build_id->n_hdr.n_namesz, 4) +
>> +			ALIGN(g_build_id->n_hdr.n_descsz, 4);
>> +	}
>> +}
>> +
>>   static int __init crash_save_vmcoreinfo_init(void)
>>   {
>>   	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);
>> @@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
>>   	}
>>   
>>   	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
>> +	add_build_id_vmcoreinfo();
>>   	VMCOREINFO_PAGESIZE(PAGE_SIZE);
>>   
>>   	VMCOREINFO_SYMBOL(init_uts_ns);
>> -- 
>> 2.26.2
>>
>>
>> _______________________________________________
>> kexec mailing list
>> kexec@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/kexec
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2a68e2ed-c937-8ef7-5eea-5fe825df3cc8%40linux.microsoft.com.
