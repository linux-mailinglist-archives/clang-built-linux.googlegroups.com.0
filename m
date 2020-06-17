Return-Path: <clang-built-linux+bncBAABBP5EVL3QKGQER4GM56A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C21FD804
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 23:59:29 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id g28sf1292855uaf.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:59:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592431168; cv=pass;
        d=google.com; s=arc-20160816;
        b=HbMvGeM+3Lo4Ns7eHKsAlqCHJ/XyPEEIcraRnpHs+cZEUFvD4qaJCvqfqRLJNrgtyz
         277gqg5NEDEPN4wkL3EQfALXSQ7NqjxU02OXKL2JtkfRSmaMOQizupSPROVMNADod1DZ
         UDpU2IZKjYKJfCTQSBV5NkScCagjvEOwaaVO9uTHpHF9DVykbnfxYDHih4Hg3eU37KZm
         U8q9TU0hy30PE7UnY9ZCa9qqaHW9TJzeuCpEi5/6Zf3kR52YLVtq+hh3qGnkf7RW161w
         QoQgPncTDInVsK2CksNTjCcxXi54ooS0XRd2etKknXa5B7fIyPpqmrUX8o1l2DKeng5t
         HvnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:dkim-filter:sender:dkim-signature;
        bh=qJAoTpTn/u4HP7L9VfMi2I7bBwAa3HwXeln9/q6e2zY=;
        b=EMh8x4e8iDwwY6Ad6qfuWaq5TL0WE6FYj/zbBOustOV2XRqMVREGmY4dHGF/fFHeeG
         sBy1yxbnHU33JNmB7ojwILfrl+W5mpDU3tdBvmGgvaW1teu0nKtZ59TYZD7EBlW9hBcU
         eu5vIyJP4rtdy/LuI16a24zcWfN8FkeAfPea8uipKC4GHenVIiCosxnZ0z9NYm/oSHtx
         RFGdO+NlWRz/sd3t/bnUJGnS5oTrSS1xF3iJX4myKx+x85xPm6v9+4b7nkS+Onq6kB/p
         g73g4J4a9pBnDroReDIn+L+n2hzvlCD4hxidFiTTpftY0R2h4RjgWupiEGvVClObsWks
         OJMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=fPMTh8hF;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qJAoTpTn/u4HP7L9VfMi2I7bBwAa3HwXeln9/q6e2zY=;
        b=hmvb2rNAodB/qSsR1N+l0xF7BBX20Ti8tt7qh48pqGJQ0xi0hTp+BX+x5+F2XUIIZ8
         VAZ0uyx7vnR8oX1T157jvYvApH2/tCA/uKAOYKZxu7HTjPfGQUqHOyOI8IDGtTHNEHph
         Rl4oCrNIuKPSSxW9zCiJokmoimrEvNLFQzzqqIJ+euAm9Tp2Ur0NHxL1OW8iAa3qX6Yw
         I+snN/OshmUnWLsRbrZBnQXk20HfaMg512Y4E9xn+IvvBMiHBeJuMb4eWGSLBSmUQMJ+
         aHogyAupH7u6RlOyJSD8ij20DKXXRooD7oz5nVb7Z4fj3og/55jHbfq8JesbUWVQm4Yv
         N2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qJAoTpTn/u4HP7L9VfMi2I7bBwAa3HwXeln9/q6e2zY=;
        b=gw2hN04woYSaPbeCqnIQ4a9wSnyNm5eEqRDoDyiu2bkXT/5GhDj95PAb9zVC0xVvzf
         VDWe+icc3CpPi/YNPSNOO5HYmXdxGYtmjltW7R1Q3dfQO84suQ7J6huq9e/RC+/kdjw6
         S/okLZzlP3yiaU32fVgsKfRB6jhGN8qWtypnrfbZvWBENTQ6DoLK95zzrMXwUyayquHL
         yZsmETgKCkVOr7Kg7E3/fQfoz57QYVWiBrWbWN43K71whxznKJsgn7d38coBWP6oRv93
         jPrCsbk9j+dqDywl9j/GiC1zZGDgfSGdKuiQVKwL9NEOE2H5T37XwiDS2FcuEIZOVgPz
         q9eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z7A5CvHwEmeS2kYlhw/fxJyuXpV9m0NLfEinQCxvIUjhcFfYw
	fvdB6U1pfPJnipwrf/8O9gs=
X-Google-Smtp-Source: ABdhPJxDoTiDDiEYG298OigmnfD++hSI88BiVmhPII+hK+U1svMBHIIV6KEwzrpmNPAxyCP6jI/8Kw==
X-Received: by 2002:a67:e90e:: with SMTP id c14mr1177607vso.185.1592431168083;
        Wed, 17 Jun 2020 14:59:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls480547vsc.0.gmail; Wed, 17 Jun
 2020 14:59:27 -0700 (PDT)
X-Received: by 2002:a67:e341:: with SMTP id s1mr1147205vsm.41.1592431167747;
        Wed, 17 Jun 2020 14:59:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592431167; cv=none;
        d=google.com; s=arc-20160816;
        b=0HqsqDebYp6iYCUuPGuDhwp9rLZsAsRV/T6iQJ/TAXpA96Pv/jtGBGzZYjkWiM3/rt
         Cc2gzhH+9rEnsk7By0p6JcERxAktH3y4qKYu9AgILhSpJqmTp2n6NmEZqm76jPMSFHxI
         O3auMBkM1lFs01mf/xyTbWWTVhVbSzeVrTnEhn+l+WeLAYMbseLG1k/AimSUr0mnyq3W
         Sc/dh9Hun5yfziUyaP5XVzD6yq+JP16J74YbNrMRuauDXyHUOAiVCy481G4Yy9/K8Z+K
         SPLDmeZclJo/JdL37BM4yzV4FkCqKYc/r+HEhtfSo9kPCOygE4MaIqA9AQ8+7n1vvBnP
         IM+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=vXF/AK+HilS0mky+64QCLgW+nVTkEVVzDGGQtIvSA+k=;
        b=lLhGircq4Tnghq8ZISgyq3PkgmGbLwocCeOfVd6GkO7gPGnEaqfT39TETQ8/F1B6Yv
         MiPUNAtG/8GTeLlaIEIVA/6OzgVx+DaFdLs/nFhTCOM2RkptC0t3F2ZpChNHqm5YUq24
         phwhtdnen9bs2hvhm+oaO9wHCXwI0UZOPhRyA5QyWPQjeslFT+ZP+meWldh7rxEKB41k
         Pd7C0duRRGMrV9nvpKnnV2gzepY4u3YUksXsrszCz9ZsMGUN3Z/+6sIlQr+AHLGXkNMB
         U92qhY+YYCJux/gs4cUyXvC5T5wem+rhgVMrfRhqpTrKbfg14bcfeDe1+Elf4DCnAERI
         g6SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=fPMTh8hF;
       spf=pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=vijayb@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id q20si115230uas.1.2020.06.17.14.59.27
        for <clang-built-linux@googlegroups.com>;
        Wed, 17 Jun 2020 14:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vijayb@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from [192.168.0.109] (unknown [209.134.121.133])
	by linux.microsoft.com (Postfix) with ESMTPSA id 4675820B7192;
	Wed, 17 Jun 2020 14:59:26 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 4675820B7192
Subject: Re: [PATCH v2][RFC] kdump: append kernel build-id string to
 VMCOREINFO
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Dave Young <dyoung@redhat.com>, Baoquan He <bhe@redhat.com>,
 Vivek Goyal <vgoyal@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Tyler Hicks <tyhicks@linux.microsoft.com>
References: <1591849672-34104-1-git-send-email-vijayb@linux.microsoft.com>
 <20200617124531.753b42152682219f267b75a1@linux-foundation.org>
From: Vijay Balakrishna <vijayb@linux.microsoft.com>
Message-ID: <4bf02b0f-fc24-eb28-cf5c-419e7161f707@linux.microsoft.com>
Date: Wed, 17 Jun 2020 14:59:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200617124531.753b42152682219f267b75a1@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: vijayb@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=fPMTh8hF;
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

Thanks Andrew.  See inline.

On 6/17/2020 12:45 PM, Andrew Morton wrote:
> On Wed, 10 Jun 2020 21:27:52 -0700 Vijay Balakrishna <vijayb@linux.microsoft.com> wrote:
> 
>> Make kernel GNU build-id available in VMCOREINFO.  Having
>> build-id in VMCOREINFO facilitates presenting appropriate kernel
>> namelist image with debug information file to kernel crash dump
>> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
>> key for crash analysis automation.
>>
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
>> dumps, shared libraries, loadable kernel modules etc.,  This is an
>> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
>> some uniformity for automation tools.
>>
>> ...
>>
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
>> +	int n_remain = NOTES_SIZE;
>> +
>> +	while (n_remain >= sizeof(struct elf_note)) {
>> +		const struct elf_note_section *note_sec =
>> +			&__start_notes + NOTES_SIZE - n_remain;
>> +		const u32 n_namesz = note_sec->n_hdr.n_namesz;
>> +
>> +		if (note_sec->n_hdr.n_type == NT_GNU_BUILD_ID &&
>> +		    n_namesz != 0 &&
>> +		    !strcmp((char *)&note_sec->n_data[0], "GNU")) {
> 
> Is it guaranteed that n_data[] is null-terminated?

 From ELF(5) "Notes (Nhdr)" section:

>        n_namesz  The length of the name field in bytes.  The contents will immediately follow this note in memory.  The name is null  terminated.   For
>                  example, if the name is "GNU", then n_namesz will be set to 4.

Vijay

> 
>> +			if (note_sec->n_hdr.n_descsz <= BUILD_ID_MAX) {
>> +				const u32 n_descsz = note_sec->n_hdr.n_descsz;
>> +				const u8 *s = &note_sec->n_data[n_namesz];
>> +
>> +				s = PTR_ALIGN(s, 4);
>> +				bin2hex(build_id, s, n_descsz);
>> +				build_id[2 * n_descsz] = '\0';
>> +				VMCOREINFO_BUILD_ID(build_id);
>> +				return;
>> +			}
>> +			pr_warn("Build ID is too large to include in vmcoreinfo: %u > %u\n",
>> +				note_sec->n_hdr.n_descsz,
>> +				BUILD_ID_MAX);
>> +			return;
>> +		}
>> +		n_remain -= sizeof(struct elf_note) +
>> +			ALIGN(note_sec->n_hdr.n_namesz, 4) +
>> +			ALIGN(note_sec->n_hdr.n_descsz, 4);
>> +	}
>> +}
>> +
>>   static int __init crash_save_vmcoreinfo_init(void)
>>   {
>>   	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4bf02b0f-fc24-eb28-cf5c-419e7161f707%40linux.microsoft.com.
