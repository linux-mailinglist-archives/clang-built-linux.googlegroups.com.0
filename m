Return-Path: <clang-built-linux+bncBCKPFB7SXUERB54GQH3QKGQEFEZGETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2652D1F4B4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 04:20:41 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id d190sf756325qkc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 19:20:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591755639; cv=pass;
        d=google.com; s=arc-20160816;
        b=m1YMa4rX4Yd2BhXEvcAfFh/60qtcU7fPBGi+S8Uibydd2AFQxJ+2UbILf4jSxIWeDB
         OA6sNDNJDa/yx+1NzkYctBUeTMPFOD6l4hj3BYj0fZoNl3cBvOv8XEgT3FQ3a8eWN4l4
         0/NnhRsYJno8gMezxQRD3g9T2h3oVLhwncYdQGM9euHp4dfVeWpQuGMZOV9ZySjob6LF
         +QKUh6AUrbnzhVPqsweK4HwWeeAlabun/m8fF3ic0f1U3b6M1nSCO0DIIE4g0sCQc2a9
         qE80vI401z9PaGwcuAvrP6ISBH+JpLE6sK6hslmbwcMQRDkSc/1+kL3oYAeOJKtcvjLn
         BOXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=R51MxG27aDwYSY2e3cGixCQfbCOiVt4VwAeztgC2U98=;
        b=OI1MtBcJ1GiqZl7tgwX9lBkavtNprgfSCJeH11jSUjeBaX3nncJ4mgjlrya/qls7pz
         M8dRv+9Nst6NYTjHB/CEn+w1GRb2umsG3V1WR8BvXFqnLmfWrZWi5anjgnjW6EddOPrp
         QTyuVPdOBsl7zgNGWxmJQ16Gh3ruaMxF+DCegOJbfUma73NFKbL9qhRlb/wBYzjDUge5
         YVe+BBI/e+zRVIY02UJHUKkmKeUnE6tUh9ynWuKazVFI2aFaGhSU/7Glz9GcW6PVkCWi
         8yCPWbSSDaIMXwH5jC2tHCWIvI2ULhs235Z0ogTnkQG+7+MbEIL39rHY/SqHh+NL2e8W
         NTbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M3xMmnsL;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R51MxG27aDwYSY2e3cGixCQfbCOiVt4VwAeztgC2U98=;
        b=cCzmQ0hbo67CatAWH77HwRRa8lKxIEqFVJCcC2nVFBmuZ9vib1u9oUsTw7QHNPzYLe
         v3jYSheGOPAmnGAgsXp8OQK5/X5T0AjKVFmPjrMQ/95HAK7pGG4LvRAi5MaqOA8e2XdK
         BmfV9FFGyCOAseptB3YXn7X6E9Naq0lS63wmBEuPnr4sHy5ui4ntYvyQxju+7AWMTEZV
         KS8Eu2iTDaC2eyAvvTx4NVwQRMs0DOYmLTv/ou+0VJIBczxKr2ByDpmwqi54ZIpJZ0tg
         8mGQ3WaK18CBJrjtQd95mOJ6SlzSlsDESVReZV50Femk7hpUl6gz66WZEQw9A8vwAGpF
         3eVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R51MxG27aDwYSY2e3cGixCQfbCOiVt4VwAeztgC2U98=;
        b=Dx4eyYKbh3EI6V3awP0nZLy5JN18VZ5FsPGPHKOynd7dp0kLSKYZBYX4diYC7ZkgFh
         guSdqG5xsSEm+JykWPABRypRMLM2gV9GXt+0VIx1bn4qyv/nai/4l2aPIp7IK5yL1g6l
         NGpawMVjX1naknYAdwHcXHUjB4rucGAPeNzMweL+Gka+Y0PgJMN3ZdHQFyMgfLdDtnbE
         D4z7xA/yFEw3nmtqgfkpaTw/bu3ZTyN8omvDhIPzY5g1axD8D9OaxdX+vUmQmcStMyjG
         5hSx9RXdK0dpUsxX/SwXdLnMMnow8CFsH33eFfr3QlXv3Qac908XU02IahGGnV1AjaY3
         i1eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s+V9qKpy+jxAna5OIi3utyOFMq6xYgbvp3WJOcTaWZW2UPF80
	+DuhDTwLjD/1XxFCgnAhvc0=
X-Google-Smtp-Source: ABdhPJxOZqdr+g06HV5IXL001pclQocRC2CIyY8ePwubmBw40ng/4vlvNrGswWZ30avmJOeb9iXPYg==
X-Received: by 2002:a0c:b712:: with SMTP id t18mr1035165qvd.245.1591755639587;
        Tue, 09 Jun 2020 19:20:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8a:: with SMTP id b10ls10690366qkn.9.gmail; Tue,
 09 Jun 2020 19:20:39 -0700 (PDT)
X-Received: by 2002:a37:a854:: with SMTP id r81mr946670qke.83.1591755639202;
        Tue, 09 Jun 2020 19:20:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591755639; cv=none;
        d=google.com; s=arc-20160816;
        b=e0ZldQOmz9DIIlGwdUxgIRZd0Q11snCd/rGyLhLjFIoPpvkt8gOXc3ZffTKkKhtTve
         ag2DRLeq2u96ZNkgGoa55lsssfGktQ3/5mxAjBWfKTti/Ck6ersEU6p4ekeUeDi88OE6
         cB/r117NmfBLm3g13xR8Orja3vKTJp9z+tblBwZvJq08wgo5MtPs6oDX7dht+2LB+njr
         Tq54D81G2WjvUqoXN0VrBeIZX+4I7cLfrdNirlHV1Jvpinge9U0ZLAs8QVY1fPZciWuL
         KbP2mLHRFo62SLo4I9krU8MKQZIG05nDdFVEAzaqRNFh4/OfpoQdyiQk5+yUy2SJYq4h
         m9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mNIvzhEAzVa8Lhlgg9l+HjpMaAfaiGPlfqtS4gB5XnM=;
        b=PDEXcjtQJQMWbm3B3Gt6tQlQINpismm4lbhUBA6dVu7tUc11z2PZRmCBN1AuBmeso4
         Mus0mMzhsU+pBNt7cSCRbV0QGhsBhVD1eMe4/xlTzCrsGuFWTDh/a7pl34f/XLm9q5Qh
         4+7HKxT4FdOpFIKboAqP6mnJmui7AEciLJxrIMh07jEZlFWwIr44hZOvso85qVaR4C4B
         FmL0O8MeSNeWJIJS6yPyj8Q66OIjvlICrvLbUd4WEZXj7IRrT0KCfG1NInzZRblvbrrS
         q1gzTvkHvauCd7X9pAqlzYYmMBpomxTwiRbK1RpJ+CDakGeDR2uCRbj212nB7RW42rp/
         M5TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M3xMmnsL;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id m1si876432qki.3.2020.06.09.19.20.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 19:20:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-_4iWAu3yPfK6P2WPfM0-uw-1; Tue, 09 Jun 2020 22:20:34 -0400
X-MC-Unique: _4iWAu3yPfK6P2WPfM0-uw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EA0F1005510;
	Wed, 10 Jun 2020 02:20:33 +0000 (UTC)
Received: from localhost (ovpn-12-95.pek2.redhat.com [10.72.12.95])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 276A05D9CD;
	Wed, 10 Jun 2020 02:20:29 +0000 (UTC)
Date: Wed, 10 Jun 2020 10:20:27 +0800
From: Baoquan He <bhe@redhat.com>
To: Vijay Balakrishna <vijayb@linux.microsoft.com>
Cc: Dave Young <dyoung@redhat.com>, clang-built-linux@googlegroups.com,
	Tyler Hicks <tyhicks@linux.microsoft.com>,
	kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
	Vivek Goyal <vgoyal@redhat.com>
Subject: Re: [PATCH][RFC] kdump: append kernel build-id string to VMCOREINFO
Message-ID: <20200610022027.GI20367@MiWiFi-R3L-srv>
References: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1591315291-66957-1-git-send-email-vijayb@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=M3xMmnsL;
       spf=pass (google.com: domain of bhe@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 06/04/20 at 05:01pm, Vijay Balakrishna wrote:
> Make kernel GNU build-id available in VMCOREINFO.  Having
> build-id in VMCOREINFO facilitates presenting appropriate kernel
> namelist image with debug information file to kernel crash dump
> analysis tools.  Currently VMCOREINFO lacks uniquely identifiable
> key for crash analysis automation.

Looks like a good idea. I have several concerns, please check below inline
comments.

> 
> Signed-off-by: Vijay Balakrishna <vijayb@linux.microsoft.com>
> ---
> Regarding if this patch is necessary or matching of linux_banner
> and OSRELEASE in VMCOREINFO employed by crash(8) meets the
> need -- IMO, build-id approach more foolproof, in most instances it
> is a cryptographic hash generated using internal code/ELF bits unlike
> kernel version string upon which linux_banner is based that is
> external to the code.  I feel each is intended for a different purpose.
> Also OSRELEASE is not suitable when two different kernel builds
> from same version with different features enabled.
> 
> Currently for most linux (and non-linux) systems build-id can be
> extracted using standard methods for file types such as user mode crash
> dumps, shared libraries, loadable kernel modules etc.  This is an
> exception for linux kernel dump.  Having build-id in VMCOREINFO brings
> some uniformity for automation tools.

These two paragraphs can be added to log too?

> 
>  include/linux/crash_core.h |  6 +++++
>  kernel/crash_core.c        | 50 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 56 insertions(+)
> 
> diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
> index 525510a9f965..6594dbc34a37 100644
> --- a/include/linux/crash_core.h
> +++ b/include/linux/crash_core.h
> @@ -38,6 +38,8 @@ phys_addr_t paddr_vmcoreinfo_note(void);
>  
>  #define VMCOREINFO_OSRELEASE(value) \
>  	vmcoreinfo_append_str("OSRELEASE=%s\n", value)
> +#define VMCOREINFO_BUILD_ID(value) \
> +	vmcoreinfo_append_str("BUILD-ID=%s\n", value)
>  #define VMCOREINFO_PAGESIZE(value) \
>  	vmcoreinfo_append_str("PAGESIZE=%ld\n", value)
>  #define VMCOREINFO_SYMBOL(name) \
> @@ -64,6 +66,10 @@ extern unsigned char *vmcoreinfo_data;
>  extern size_t vmcoreinfo_size;
>  extern u32 *vmcoreinfo_note;
>  
> +/* raw contents of kernel .notes section */
> +extern const void __start_notes __weak;
> +extern const void __stop_notes __weak;
> +
>  Elf_Word *append_elf_note(Elf_Word *buf, char *name, unsigned int type,
>  			  void *data, size_t data_len);
>  void final_note(Elf_Word *buf);
> diff --git a/kernel/crash_core.c b/kernel/crash_core.c
> index 9f1557b98468..c094db478803 100644
> --- a/kernel/crash_core.c
> +++ b/kernel/crash_core.c
> @@ -11,6 +11,8 @@
>  #include <asm/page.h>
>  #include <asm/sections.h>
>  
> +#include <crypto/sha.h>
> +
>  /* vmcoreinfo stuff */
>  unsigned char *vmcoreinfo_data;
>  size_t vmcoreinfo_size;
> @@ -376,6 +378,53 @@ phys_addr_t __weak paddr_vmcoreinfo_note(void)
>  }
>  EXPORT_SYMBOL(paddr_vmcoreinfo_note);
>  
> +#define NOTES_SIZE (&__stop_notes - &__start_notes)
> +#define BUILD_ID_MAX SHA1_DIGEST_SIZE
> +#define NT_GNU_BUILD_ID 3
> +
> +struct elf_note_section {
> +	struct elf_note	n_hdr;
> +	u8 n_data[];
> +};
> +
> +/*
> + * Add build ID from .notes section as generated by the GNU ld(1)
> + * or LLVM lld(1) --build-id option.
> + */
> +static void add_build_id_vmcoreinfo(void)
> +{
> +	char build_id[BUILD_ID_MAX * 2 + 1];

Here, could you tell why we need two times the build id length?

> +	int n_remain = NOTES_SIZE;
> +
> +	while (n_remain >= sizeof(struct elf_note)) {
> +		const struct elf_note_section *g_build_id =

Here naming of 'g_build_id' looks a little weird. We usually define
global variable with 'g_xxxx'. Maybe we can change it to 'note_sec' or
something else, because not all iterated elf_note_section is build_id
related. 

> +			&__start_notes + NOTES_SIZE - n_remain;
> +		const u32 n_namesz = g_build_id->n_hdr.n_namesz;
> +
> +		if (g_build_id->n_hdr.n_type == NT_GNU_BUILD_ID &&
> +		    n_namesz != 0 &&
> +		    !strcmp((char *)&g_build_id->n_data[0], "GNU")) {
> +			if (g_build_id->n_hdr.n_descsz <= BUILD_ID_MAX) {
> +				const u32 n_descsz = g_build_id->n_hdr.n_descsz;
> +				const u8 *s = &g_build_id->n_data[n_namesz];
> +
> +				s = PTR_ALIGN(s, 4);
> +				bin2hex(build_id, s, n_descsz);
> +				build_id[2 * n_descsz] = '\0';
> +				VMCOREINFO_BUILD_ID(build_id);
> +				return;
> +			}
> +			pr_warn("Build ID is too large to include in vmcoreinfo: %lu > %lu\n",
> +				g_build_id->n_hdr.n_descsz,
> +				BUILD_ID_MAX);
> +			return;
> +		}
> +		n_remain -= sizeof(struct elf_note) +
> +			ALIGN(g_build_id->n_hdr.n_namesz, 4) +
> +			ALIGN(g_build_id->n_hdr.n_descsz, 4);
> +	}
> +}
> +
>  static int __init crash_save_vmcoreinfo_init(void)
>  {
>  	vmcoreinfo_data = (unsigned char *)get_zeroed_page(GFP_KERNEL);
> @@ -394,6 +443,7 @@ static int __init crash_save_vmcoreinfo_init(void)
>  	}
>  
>  	VMCOREINFO_OSRELEASE(init_uts_ns.name.release);
> +	add_build_id_vmcoreinfo();
>  	VMCOREINFO_PAGESIZE(PAGE_SIZE);
>  
>  	VMCOREINFO_SYMBOL(init_uts_ns);
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610022027.GI20367%40MiWiFi-R3L-srv.
